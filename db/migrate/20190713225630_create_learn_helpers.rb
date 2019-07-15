class CreateLearnHelpers < ActiveRecord::Migration[5.2]
  def change
    create_table :learn_helpers do |t|
      t.string :url
      t.string :title
      t.belongs_to :topic
      t.belongs_to :user 
      t.timestamps
    end
  end
end
