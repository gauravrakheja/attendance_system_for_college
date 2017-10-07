class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]
  before_action :set_subjects, only: [:create, :update]
  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
    8.times { @student.subjects.new }
  end

  # GET /students/1/edit
  def edit
    8.times { @student.subjects.new }
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        append_subjects(@student)
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        append_subjects(@student)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    Student.destroy_all
  end

  private

    def set_subjects
      @subjects = []
      params[:student][:subjects_attributes].each do |key, value|
        unless value[:id] == ""
          subject = Subject.find(value[:id])
          if subject
            @subjects << subject
          end 
        end
      end
      @subjects.compact!
    end

    def append_subjects(student)
      if @subjects
        @subjects.each do |subject|
          student.subjects << subject
        end
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:roll_number, :name, :phone, :email, :course, :year, subjects_attributes: [:id])
    end
end
