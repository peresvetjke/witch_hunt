class EntitiesTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :entities_types do |t|
      t.references :entity
      t.references :type

      t.timestamps
    end
  end
end
