class Patient < ActiveRecord::Base
	#include Extensions::UUID
	#before_create :generate_uuid

	validates :patient_name, :presence => true, :null => false
	validates :gender, :presence => true
	validates :pin, numericality: { only_integer: true }, length: { is:6 }
	GENDER_TYPES = ["Not telling","Male", "Female"]
	#belongs_to  :User
	#self.table_name  = 'patient_development'
	#self.primary_key = 'no'

	#def generate_uuid
		#@uuid = SecureRandom.uuid 
	#end
	
end
