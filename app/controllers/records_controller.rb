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
        if @record.save
            flash.now[:success] = "Successfully created a record"
            redirect_to @record
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @record.update(record_parameters)
            flash.now[:success] = "Successfully updated a record"
           redirect_to @record
        else
            render 'edit'
        end
    end

    def destroy
        if @record.destroy
            flash.now[:success] = "Successfully deleted a record"
            redirect_to records_url
        else
            render 'index'
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