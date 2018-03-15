class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.integer :teacher_id, default: 1
      t.integer :student_id, default: 1
      t.integer :resource_id, default: 1
      t.integer :lesson_id, default: 1
			t.text		:content
			
			t.timestamps
    end
  end
end
