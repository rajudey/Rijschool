class CreateRijschools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string     :name
      t.string     :contact
      t.text       :description
      t.string     :link
      t.datetime   :created_at 
      t.datetime   :updated_at
    end
  end
end
