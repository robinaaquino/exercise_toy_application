class RecordsController < ApplicationController
    before_action :set_record, only: %i[ show destroy ]

    def index
        @records = Record.all
    end

    def show
    end

    def new
        @record = Record.new
    end

    def create
        @record = Record.new(record_parameters)

        respond_to do |format|
            if @record.save
                format.html { redirect_to records_url}
            end
        end
    end

    def destroy
        @record.destroy

        respond_to do |format|
            format.html { redirect_to records_url}
        end
    end

    private
        def set_record
            @record = Record.find(params[:id])
        end

        def record_parameters
            params.require(:record).permit(:content, :user_id)
        end
end