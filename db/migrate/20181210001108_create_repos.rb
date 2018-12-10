class CreateRepos < ActiveRecord::Migration[5.2]
  def change
    create_table :repos do |t|
      t.string :id_on_platform
      t.string :name
      t.string :url
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
