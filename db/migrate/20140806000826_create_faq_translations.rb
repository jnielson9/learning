class CreateFaqTranslations < ActiveRecord::Migration
  def self.up
    Faq.create_translation_table!({:question => :string,:answer => :text}, {:migrate_data => true})
  end

  def self.down
    Faq.drop_translation_table! :migrate_data => true
  end
end
