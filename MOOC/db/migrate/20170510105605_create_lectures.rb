class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.text :attachment
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
