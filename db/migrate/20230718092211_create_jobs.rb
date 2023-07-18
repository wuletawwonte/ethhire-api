class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :location
      t.decimal :salary
      t.string :type

      t.timestamps
    end
  end
end
