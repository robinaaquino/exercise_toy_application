class RecordsController < ApplicationController
    def index
        @records = Record.all
    end

    def new
        @record = Record.new
    end

    def create
        @record = Record.new(record_parameters)

        if @record.save
            format.html { redirect_to records, notice: "Success"}
        end
    end

    def destroy
        @record.destroy
    end

    private
        def record_parameters
            params.require(:record).permit(:content, user_id)
        end
end