class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :employee_id
      t.text :address
      t.string :phone_number 
      t.string :email
      add_column :employee, :designation, :string
      t.string :team
      t.string :pan_number
      t.string :dob
      t.string :hdfc_accno
      t.string :gross_ctc
      

      t.timestamps
      
      
    end
    
  end
end
