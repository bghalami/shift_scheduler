class CreateUserTable < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tables do |t|
      t.string :name, null: false
      t.string :username, null: false
      t.string :password_digest, null: false
      t.float :pay_rate, null: false
      t.integer :hours_requested, null: false
      t.integer :role, null: false
      t.references :company, foreign_key: true, null: false
    end
  end
end
