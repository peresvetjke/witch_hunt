class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :title
      t.belongs_to :type

      t.timestamps
    end
  end
end
