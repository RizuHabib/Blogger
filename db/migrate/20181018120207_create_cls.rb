class CreateCls < ActiveRecord::Migration[5.1]
  def change
    create_table :cls do |t|
      t.integer :comment_id
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
