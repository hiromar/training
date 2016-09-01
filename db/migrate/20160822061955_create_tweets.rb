class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :image
      t.text :text
      t.string :nickname
      t.timestamps
    end
  end
end
