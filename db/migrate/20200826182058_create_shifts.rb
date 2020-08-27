class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.string :mon3
      t.string :integer

      t.timestamps
    end
  end
end
