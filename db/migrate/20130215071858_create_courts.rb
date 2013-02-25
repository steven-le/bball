class CreateCourts < ActiveRecord::Migration
  def change
    create_table :courts do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :lat, :float
      t.column :lon, :float
      t.column :street, :string
      t.column :city_state, :string
      t.column :pic_link, :string
      t.timestamps
    end
  end
end
