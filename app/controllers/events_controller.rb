class EventsController < ApplicationController
    def index
        @events=Event.all

    end

    def show
        @event=Event.find(params[:id])

    end

    def new
        @user=User.find_by(id: session[:user_id])
        @event=@user.created_events.build
    end

    def create
        @user=User.find_by(id: session[:user_id])
        @event=@user.created_events.build(event_params)
        if @event.save
            redirect_to event_path(@event)
        else
            render :new
        end
    end

    def destroy
        @event=Event.find(params[:id])
        @event.destroy
        if @event.destroy
            redirect_to root_path
        end
    end

    private

    def event_params
        params.require(:event).permit(:name, :event_date, :location)
    end
end
