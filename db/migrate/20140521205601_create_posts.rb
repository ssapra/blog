class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.date :published_at
      t.string :content

      t.timestamps
    end
  end
end
