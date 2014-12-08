class Patient < ActiveRecord::Base
	belongs_to  :users, :foreign_key  => "id"
	#:dependent :nullify
	
	#include Extensions::UUID
	#before_create :default
	#validates :foreign_key, :presence => true
	validates :patient_name, :presence => true, :null => false
	validates :gender, :presence => true
	validates :pin, numericality: { only_integer: true }, length: { is:6 }
	GENDER_TYPES = ["Not telling","Male", "Female"]
	#self.table_name  = 'patient_development'
	#self.primary_key = 'no'

	#def generate_uuid
		#@uuid = SecureRandom.uuid 
	#end
	#def default
		#self.user == "user.id"
	#end

end
