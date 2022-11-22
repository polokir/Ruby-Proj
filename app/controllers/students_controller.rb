class StudentsController < ApplicationController
  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @session = Session.find(params[:session_id])
    @student = @session.students.create(student_params)
    redirect_to session_path(@session)
  end

  def edit
    @student = Student.find(params[:id])
    @session = Session.find(params[:session_id])
  end

  def update
    @session = Session.find(params[:id])
    @student = Student.find(params[:session_id])
    if (@student.update(student_params))
      redirect_to session_path(@session)
    else
      render 'session/show'
    end
  end

  def destroy
    @session = Session.find(params[:id])
    @student = Student.find(params[:session_id])

    @student.destroy
    redirect_to session_path(@session)
  end

  private def student_params
    params.require(:student).permit(:surname, :group, :geometryMark, :algebraMark, :infoMark,:session_id)
  end
end
