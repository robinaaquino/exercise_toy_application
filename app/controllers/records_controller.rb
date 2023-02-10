class RecordsController < ApplicationController
    before_action :set_record, only: %i[ show edit update destroy ]

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
                format.html { redirect_to records_url, notice: "Successfully created a record"}
            end
        end
    end

    def edit
    end

    def update
        respond_to do |format|
            if @record.update(record_parameters)
                format.html { redirect_to record_url(@record), notice: "Successfully updated a record"}
            end
        end
    end

    def destroy
        @record.destroy

        respond_to do |format|
            format.html { redirect_to records_url, notice: "Successfully deleted a record"}
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