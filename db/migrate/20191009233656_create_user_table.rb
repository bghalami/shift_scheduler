class CreateUserTable < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tables do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.float :pay_rate
      t.integer :hours_requested
      t.integer :role
      t.references :company, foreign_key: true
    end
  end
end
