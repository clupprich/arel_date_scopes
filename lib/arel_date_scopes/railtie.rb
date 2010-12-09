module ArelDateScopes
  class Railtie < Rails::Railtie
    initializer 'fmt_alias.insert_into_active_record' do
      ActiveSupport.on_load :active_record do
        ::ActiveRecord::Base.send(:include, ArelDateScopes::ActiveRecord)
      end
    end
  end
end