class CatRecordsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_cat, only: [:index, :create]

    def index
        @cat_record = CatRecord.new
    end

    def create
        @cat_record = CatRecord.new(cat_record_params)
        if @cat_record.save
            redirect_to cat_path(@cat.id)
        else
            render :index
        end
    end

    private
    def set_cat
        @cat = Cat.find(params[:cat_id])
    end

    def cat_record_params
        params.require(:cat_record).permit(:new_parent_name, :phone_number, :parent_name, :checkbox).merge(cat_id: @cat.id)
    end
end
