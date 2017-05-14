class ChangeAttachmentTypeInLecture < ActiveRecord::Migration
  def change
    change_column :lectures, :attachment, :attachment
  end
end
