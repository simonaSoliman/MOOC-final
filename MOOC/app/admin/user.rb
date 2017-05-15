ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :DOB, :gender, :email, :password
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :DOB
      f.input :gender
      f.input :email
      f.input :password
    end
    f.actions
  end

end
