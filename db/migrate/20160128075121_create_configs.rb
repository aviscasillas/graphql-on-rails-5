class CreateConfigs < ActiveRecord::Migration[5.0]
  def change
    create_table :configs do |t|
      t.string :app_name
      t.string :brand
      t.string :company
    end
  end
end
