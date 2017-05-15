ActiveAdmin.register Lecture do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :user_id, :content, :course_id, :attachment
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
    f.inputs "Lecture Details" do
      f.input :user_id
      f.input :content
      f.input :course_id
      f.input :attachment
    end
    f.actions
  end

end
