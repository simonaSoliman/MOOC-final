class CreatelectureUser < ActiveRecord::Migration
  def up
    create_table :lectures_user do |t|
      t.integer :lecture_id
      t.integer :user_id
    end
    def down
    end
  end
end
