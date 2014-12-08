class PatientController < ApplicationController
	#scaffold :patient
before_filter :authenticate_user
#before_filter :generate_uuid
 	def register
 		@patient = Patient.new
	end

	def create
		@patient = Patient.new(patient_params)
		#@current_user = User.find session[:user_id]
 		#@patient.user = @current_user_id
		#@patient.user = current_user
		if @patient.save
			flash[:notice] = "New patient registration successful"
			flash[:color]= "valid"
			redirect_to root_path
		else
			flash[:notice] = "OH SNAP"
			flash[:color]= "invalid"
			render "register"
		end
		
	
	end

	def patient_params
    	params.require(:patient).permit(:patient_name, :date_of_birth, :gender, :address, :pin)
  end

  
  	
  	#before_filter :save_login_state, :only => [:new, :create]


  	def profile
  		@patient = Patient.all
      #@current_user = User.find(params[:id])
    end
    def edit
      	@patient = Patient.find(params[:id])
    end
    def update
      	@patient = Patient.find(params[:id])
      	if @patient.update_attributes(patient_params)
         	redirect_to :action => 'profile', :id => @patient
      	else
         	render :action => 'edit'
       	end
   	end

end
