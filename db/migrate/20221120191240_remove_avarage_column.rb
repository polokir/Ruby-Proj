class RemoveAvarageColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :avarageMark
  end
end
