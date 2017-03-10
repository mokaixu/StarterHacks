class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :phone_number
      t.text :text_message

      t.timestamps null: false
    end
  end
end
