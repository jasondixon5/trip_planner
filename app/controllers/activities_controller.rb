class ActivitiesController < ApplicationController
    def create
        @trip = Trip.find(params[:trip_id])

        if @trip.activities.create(params)
            redirect_to @trip, notice: 'Activity was successfully created.'
        else
            redirect_to @trip, alert: 'Error creating activity.'
        end
    end
end
