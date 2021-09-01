class DogRecordsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_dog, only: [:index]

    def index
        @dog_record = DogRecord.new
    end

    def create
        @dog_record = DogRecord.new(dog_record_params)
        if @dog_record.save
            redirect_to dog_path(@dog.id)
        else
            render :index
        end
    end

    private
    def set_dog
        @dog = Dog.find(params[:dog_id])
    end

    def dog_record_params
        params.require(:dog_record).permit(:new_parent_name, :phone_number, :parent_name, :checkbox).merge(dog_id: @dog.id)
    end
end
