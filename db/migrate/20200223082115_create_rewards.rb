class CreateRewards < ActiveRecord::Migration[5.0]
  def change
    create_table :rewards do |t|
      t.string :name, null: false
      t.index :name, unique: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
