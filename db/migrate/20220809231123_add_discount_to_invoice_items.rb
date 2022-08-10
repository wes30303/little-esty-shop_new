class AddDiscountToInvoiceItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :invoice_items, :discount, foreign_key: true, default: nil
  end
end
