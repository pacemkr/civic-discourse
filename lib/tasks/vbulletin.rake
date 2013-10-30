namespace :vbulletin do
        namespace :db do
                desc 'Create the vBulletin database.'
                task :create => 'db:load_config' do
                        config = ActiveRecord::Base.configurations['vbulletin']
                        create_database(config)
                end
        end
end
