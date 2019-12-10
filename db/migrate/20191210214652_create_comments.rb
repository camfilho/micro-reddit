class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body

      t.timestamps
      t.references :user
      t.references :post
    end
  end
end
