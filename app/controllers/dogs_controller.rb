class DogsController < ApplicationController
    def index
        @dogs = Dog.all.order(date: :asc)
    end
end
