class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :img_src
      t.string :description
      t.string :title
      

      t.timestamps null: false
    end
  end
end
