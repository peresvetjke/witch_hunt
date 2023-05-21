class CreateAliases < ActiveRecord::Migration[7.0]
  def change
    create_table :aliases do |t|
      t.string :title
      t.references :entity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
