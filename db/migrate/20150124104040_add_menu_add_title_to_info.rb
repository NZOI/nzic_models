class AddMenuAddTitleToInfo < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :link
    end

    add_column :infos, :title, :string
  end
end
