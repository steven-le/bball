class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :text, :string
      t.column :court_id, :integer
      t.column :user_id, :integer
      t.timestamps
    end
  end
end
