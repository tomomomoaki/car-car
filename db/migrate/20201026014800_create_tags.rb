class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :maker
      t.string :car_name
      t.string :body_type
      t.timestamps
    end
  end
end
