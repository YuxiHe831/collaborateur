class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :kind
      t.text :about

      t.timestamps
    end
  end
end
