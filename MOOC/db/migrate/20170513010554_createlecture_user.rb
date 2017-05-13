class CreatelectureUser < ActiveRecord::Migration
  def change
    create_table :lectures_user do |t|
      t.integer :lecture_id
      t.integer :user_id
    end
  end
end
