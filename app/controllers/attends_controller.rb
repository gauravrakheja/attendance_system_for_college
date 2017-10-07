class AttendsController < ApplicationController
	def index
		if params[:subject_id]
			@attends = Attend.where(subject_id: params[:subject_id])
		else
			@attends = Attend.all
		end
		@attends = Attend.where(day: Date.today)
		respond_to do |format|
		  format.html
		  format.xlsx {
		  	response.headers['Content-Disposition'] = "attachment; filename='#{Date.today.strftime("%d-%m-%Y")}.xlsx'"
		  }
		end
	end

	def new

	end

	def show

	end

	def create
		@attend = Attend.new(attends_params)
		if @attend.save
			flash[:success] = "Student Marked Absent"
			redirect_to subject_path(@attend.subject)
		else
			flash[:danger] = "#{@attend.errors.messages}"
			redirect_to subject_path(@attend.subject)
		end
	end

	def update
	end

	def destroy
		Attend.destroy_all
	end

	private

	def set_subject(attends, subject)
		array = []
		attends.each do |attend|
			if attend.subject = subject
				array < attend
			end
		end
		array
	end

	def attends_params
		params.require(:attend).permit(:student_id, :subject_id, :day)
	end
end