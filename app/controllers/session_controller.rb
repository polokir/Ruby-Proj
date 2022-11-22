class SessionController < ApplicationController

  def index
    @session=Session.all
  end

  def new
    @session = Session.new
  end

  def show
    @session = Session.find(params[:id])
    @student = Student.new
  end

  def create
    @session = Session.new(session_params)
    if(@session.save)
      redirect_to @session
    else
      render 'new'
    end
  end

  def edit
    @session = Session.find(params[:id])
  end

  def update
    @session = Session.find(params[:id])
    if(@session.update(session_params))
    else
      render 'new'
    end
  end

  def destroy
    @session = Session.find(params[:id])
    @session.students.each do |st|
      st.destroy
    end

    @session.destroy
    redirect_to home_path
  end

  private def session_params
    params.require(:session).permit(:data)
  end
end
