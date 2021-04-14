class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.references :user, null: false, foreign_key: true
      t.text :content
      t.json :images
      
      t.timestamps
    end
  end
end
