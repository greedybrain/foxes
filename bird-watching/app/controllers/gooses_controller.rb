class GoosesController < ApplicationController

    def create
        Goose.create(goose_params)

        @goose = Goose.new(goose_params)
        if @goose.save
            redirect_to goose_path(@goose)
        else
            render :new
        end
        # check if all fields are filled out
        # if they aren't, render the new form again with error messages
        # if they are, create the goose record and redirect to the new form
    end

    def new
        @goose = Goose.new
    end

    private

    def goose_params
        params.require(:goose).permit(:name, :park_id)
    end

end
