class AddRelationsUserCard < ActiveRecord::Migration
  def change
    
    create_table "users_cards", force: :cascade do |t|
      t.belongs_to :user , index: true
      t.belongs_to :card , index: true
    end
  end

end
