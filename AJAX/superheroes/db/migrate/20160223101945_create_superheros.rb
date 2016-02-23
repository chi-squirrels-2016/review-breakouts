class CreateSuperheros < ActiveRecord::Migration
  def change
    create_table :superheros do |t|
      t.string :name, null: false
      t.string :power, null: false
      t.timestamps
    end
  end
end
