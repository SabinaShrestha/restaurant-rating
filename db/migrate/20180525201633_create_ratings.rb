class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.string :title
      t.string :place
      t.string :website
      t.Integer :rate
      t.string :service

      t.timestamps
    end
  end
end
