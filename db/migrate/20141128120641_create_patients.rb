class CreatePatients < ActiveRecord::Migration
  require 'uuid'
  def up
    create_table :patients do |t|
    	#t.string '@uuid', :primary => true
    	t.string 'patient_name', :limit => 50, :null => false
    	t.date 'date_of_birth'
    	t.string 'gender', :limit => 20
    	t.text 'address'
    	t.string 'pin'
      #belongs_to :user

    end
  end

  def down
  	drop_table :patients
  end
  
end