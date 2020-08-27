class AddXxxToShifts < ActiveRecord::Migration[5.2]
  def change
    add_column :shifts, :tue3, :integer
    add_column :shifts, :wed3, :integer
    add_column :shifts, :thu3, :integer
    add_column :shifts, :fri3, :integer
    add_column :shifts, :sat3, :integer

    add_column :shifts, :mon4, :integer
    add_column :shifts, :tue4, :integer
    add_column :shifts, :wed4, :integer
    add_column :shifts, :thu4, :integer
    add_column :shifts, :fri4, :integer
    add_column :shifts, :sat4, :integer

    add_column :shifts, :mon5, :integer
    add_column :shifts, :tue5, :integer
    add_column :shifts, :wed5, :integer
    add_column :shifts, :thu5, :integer
    add_column :shifts, :fri5, :integer
    add_column :shifts, :sat5, :integer

    add_column :shifts, :mon6, :integer
    add_column :shifts, :tue6, :integer
    add_column :shifts, :wed6, :integer
    add_column :shifts, :thu6, :integer
    add_column :shifts, :fri6, :integer
    add_column :shifts, :sat6, :integer

    add_column :shifts, :mon7, :integer
    add_column :shifts, :tue7, :integer
    add_column :shifts, :wed7, :integer
    add_column :shifts, :thu7, :integer
    add_column :shifts, :fri7, :integer
    add_column :shifts, :sat7, :integer

    add_column :shifts, :mon8, :integer
    add_column :shifts, :tue8, :integer
    add_column :shifts, :wed8, :integer
    add_column :shifts, :thu8, :integer
    add_column :shifts, :fri8, :integer
    add_column :shifts, :sat8, :integer

    add_column :shifts, :mon9, :integer
    add_column :shifts, :tue9, :integer
    add_column :shifts, :wed9, :integer
    add_column :shifts, :thu9, :integer
    add_column :shifts, :fri9, :integer
    add_column :shifts, :sat9, :integer
  end
end
