class CreateProductValues < ActiveRecord::Migration
  def change
    create_table :product_values do |t|
      t.integer :qt_stock
      t.integer :vl_purchase_uni
      t.integer :vl_sale_uni
      t.string :fl_status
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
