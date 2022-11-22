class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :surname
      t.string :group
      t.integer :geometryMark
      t.integer :algebraMark
      t.integer :infoMark
      t.float :avarageMark

      t.timestamps
    end
  end
end
