class PatientController < ApplicationController
	#scaffold :patient
before_filter :authenticate_user
#before_filter :generate_uuid
 	def register
 		@patient = Patient.new
	end

	def create
		@patient = Patient.new(patient_params)
		if @patient.save
			flash[:notice] = "New patient registration successful"
			flash[:color]= "valid"
			render :template => "session/profile"
		else
			flash[:notice] = "OH SNAP"
			flash[:color]= "invalid"
			render "register"
		end
		
	
	end

	def patient_params
    	params.require(:patient).permit(:patient_name, :date_of_birth, :gender, :address, :pin)
  	end

  	def edit_patient
  		params.require(:patient).permit(:address, :pin)

  	
  	#before_filter :save_login_state, :only => [:new, :create]


  	def profile
    end

end
