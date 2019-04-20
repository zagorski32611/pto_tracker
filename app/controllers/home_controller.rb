class HomeController < ApplicationController
    def index
        if current_employee
            @employee = Employee.all
            @pto      = Pto_Request.all
            @pto_request = Pto_Request.new
        else 
            redirect_to new_user_session_path, notice: 'You are not logged in.'
        end
    end


    private


    def employee_params 
        params.require(:employee).permit(:id, :first_name, :last_name, :manager, :total_pto, :used_pto, :remaining_pto, :email)
    end
end
