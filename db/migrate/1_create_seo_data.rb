class CreateSeoData < ActiveRecord::Migration
  def change
    create_table :seo_data do |t|
      t.references :datable, polymorphic: true, index: true
      t.string :meta_keywords
      t.string :meta_title
      t.text   :meta_description

      t.timestamps
    end
  end
end
