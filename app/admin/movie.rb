ActiveAdmin.register Movie do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :description, :director, :length, :genre_id, :poster
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
form do |f|
	 f.inputs 'Details' do
	 	f.input :title
	 	f.input :description
	 	f.input :director
	 	f.input :length
	 	f.input :genre_id
  		f.input :poster
  	end
  	f.actions
end

end
