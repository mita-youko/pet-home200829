class DogsController < ApplicationController
    def index
        @dogs = Dog.all.order(date: :asc)
    end

    def new
        @dog = Dog.new
    end

    def create@dog = Dog.new(dog_params)
        if @dog.save
            redirect_to dogs_path
        else
            render :new
        end
    end
end
