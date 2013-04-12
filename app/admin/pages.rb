ActiveAdmin.register Page do
  form do |f|
  	f.inputs do
		f.input :title
		f.input :header
	  	f.input :content, :input_html => { :class => 'editor' }
	end
	f.actions
  end
end
