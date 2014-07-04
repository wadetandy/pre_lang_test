class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, index: true
      t.string :text
      t.references :user, index: true

      t.timestamps
    end
  end
end
