class SpreeScaffold<%= class_name.pluralize %>Hooks < Spree::ThemeSupport::HookListener
  
  Deface::Override.new(:virtual_path => 'admin/shared/_tabs',
                       :name => 'add_<%= class_name %>_model_to_tabs',
                       :insert_after => 'code[erb-loud]:last',
                       :text => '%(<%= tab(:<%= model_path.pluralize %>) %>)',
                       :disabled => false)
  
end
