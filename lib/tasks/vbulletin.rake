namespace :vbulletin do
        namespace :db do
                desc 'Create the vBulletin database.'
                task :create => 'db:load_config' do
                        config = ActiveRecord::Base.configurations['vbulletin']
                        create_database(config)
                end

                task :drop => 'db:load_config' do
                        config = ActiveRecord::Base.configurations['vbulletin']
                        drop_database_and_rescue(config)
                end
        end
end
