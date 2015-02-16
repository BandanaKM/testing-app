class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :creator
      t.string :image
      t.timestamps
    end
  end
end
