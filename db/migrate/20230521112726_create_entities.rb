class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :title
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
