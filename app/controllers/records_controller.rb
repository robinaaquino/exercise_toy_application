class RecordsController < ApplicationController
    def index
        @records = Record.all
    end

    def new
        @record = Record.new
    end

    def create
        @records = Record.new(record_parameters)

        if @records.save
            @records
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