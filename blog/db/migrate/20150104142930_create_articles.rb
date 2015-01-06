class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.references :article, index: true      
     
      t.timestamps null: false  
    end
    add_foreign_key :articles, :users
  end
end
