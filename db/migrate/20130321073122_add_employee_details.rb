class AddEmployeeDetails < ActiveRecord::Migration
  def up
  end

  def down
  end
  def change 
    change_table :employees do |t|
    t.string :designation
    t.string :team
    t.string :pan_number
    t.string :dob
    t.string :hdfc_accno
    t.string :gross_ctc
    end
      end
end
