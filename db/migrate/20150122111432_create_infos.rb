class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos, id: false, primary_key: :name do |t|
      t.string :name
      t.text :text

      t.timestamps null: false
    end
  end
end
