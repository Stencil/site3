class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|

      t.references :project
      t.timestamps null: false
    end
  end
end
