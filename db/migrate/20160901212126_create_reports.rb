class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :report_name
      t.string :image_url
      t.timestamps
    end
  end
end
