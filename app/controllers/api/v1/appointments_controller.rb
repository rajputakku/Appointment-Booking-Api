class Api::V1::AppointmentsController < ApplicationController
	before_action :authenticate_request
	def index
		if params[:start_time].present? && params[:end_time].present? && params[:doctor_id].present?
			@appointments =	Appointment.where("start_time >= (?) AND end_time <= (?)", params[:start_time], params[:end_time], doctor_id: params[:doctor_id])
		elsif params[:start_time].present? && params[:end_time].present?
			@appointments = Appointment.where("start_time >= (?) AND end_time <= (?)", params[:start_time], params[:end_time])
		elsif params[:date].present? && params[:doctor_id].present?
			date = Date.parse(params[:date])
			@appointments = Appointment.where(start_time: date.midnight..date.end_of_day, end_time: date.midnight..date.end_of_day, doctor_id: params[:doctor_id])
		elsif  params[:date].present?
			date = Date.parse(params[:date])
			@appointments = Appointment.where(start_time: date.midnight..date.end_of_day)	
		else
			@appointments = Appointment.all	
		end
		render json: @appointments 
	end

	def create
	  	if @current_user
	  		if Appointment.exists?(appointment_params) || Appointment.exists?(doctor_id: params[:doctor_id], start_time: params[:start_time], end_time: params[:end_time])
				render json: {status: 'Appointment already present'}, status: 200				
	  		else
			      @appointment = @current_user.appointments.build(appointment_params)
			      if @appointment.save
			        render json: @appointment 
			      else
			        render json: { status: 401 }
			      end
	  	 	end
    	end

	end

	private
	def appointment_params
      params.require(:appointment).permit(:title, :start_time, :end_time, :doctor_id, @current_user.id)
    end
end
