class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, foreign_key: { to_table: :users }, index: true
      t.references :doctor, foreign_key: { to_table: :doctors }, index: true
      t.timestamps
    end
  end
end
