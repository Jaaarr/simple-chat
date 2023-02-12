class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.belongs_to :chat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
