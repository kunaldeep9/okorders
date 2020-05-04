class CreatePostComments < ActiveRecord::Migration[5.0]
  def change
    create_table :post_comments do |t|
      t.string :comment
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
