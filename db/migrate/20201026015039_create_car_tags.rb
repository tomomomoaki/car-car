class CreateCarTags < ActiveRecord::Migration[6.0]
  def change
    create_table :car_tags do |t|
      t.references :car,      null: false, foreign_key: true
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
