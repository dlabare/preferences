require 'rails/generators/migration'

class PreferencesGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  
  desc "Generates a migration for the preferences table"
  
  source_root File.expand_path('../templates', __FILE__) 
  
  def self.next_migration_number(path)
    Time.now.strftime('%Y%m%d%H%M%S')
  end
  
  def generate
    migration_template "create_preferences.rb", "db/migrate/create_preferences.rb"
  end
  
end
