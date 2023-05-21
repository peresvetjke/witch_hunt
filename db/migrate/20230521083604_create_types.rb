class CreateTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :types do |t|
      t.string :disclaimer

      t.timestamps
    end
  end
end
