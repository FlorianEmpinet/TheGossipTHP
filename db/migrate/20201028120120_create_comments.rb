class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true 
      t.belongs_to :gossip, index: true 
      t.text :content
      t.timestamps
    end
  end
end
