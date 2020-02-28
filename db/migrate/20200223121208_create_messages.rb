class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :content, null: false
      t.index :content, unique: true
      t.references :user, foreign_key: true
      t.references :reward, foreign_key: true
      t.timestamps
    end
  end
end
