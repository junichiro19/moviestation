class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :jan
      t.string :title
      t.string :itemCaption
      t.string :itemUrl
      t.string :smallImageUrl
      t.string :mediumImageUrl
      t.string :largeImageUrl

      t.timestamps null: false

      t.index [:jan], unique: true
    end
  end
end
