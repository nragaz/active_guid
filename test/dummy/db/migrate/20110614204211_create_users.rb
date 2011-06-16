class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.datetime :locked_at
      t.date :born_on

      t.timestamps
    end
  end
end
