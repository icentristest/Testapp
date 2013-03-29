class Employee < ActiveRecord::Base
  attr_accessible :address, :email, :employee_id, :first_name, :last_name, :phone_number ,:designation ,:team ,:pan_number ,:dob ,:hdfc_accno ,:gross_ctc
  validates :address, :email, :employee_id, :first_name, :last_name, :phone_number ,:designation ,:team ,:pan_number ,:dob ,:hdfc_accno ,:gross_ctc , :presence => {:message => ' cannot be blank'}
  #validates :title ,:length => {:minimum => 2 , :message => 'minimum length 2'}
  #validates :title ,:uniqueness => true
  
  
  
  
end
