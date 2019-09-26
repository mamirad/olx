ActiveAdmin.register Category do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  # show do
  #   h3 Category.name
  #   div do
  #     # simple_format post.body
  #   end
  # end

  show do |category|
    attributes_table do
      row :name
      row :sub_catgories do
        category.sub_categories.each do |sub_category|
          sub_category.name
        end
      end
    end
    active_admin_comments
  end
end
