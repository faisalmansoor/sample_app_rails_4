class AddArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end
 end

