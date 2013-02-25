class CourtsController < ApplicationController
  def index
    @courts = Court.all
    respond_to do |format|
      format.json {
        render :json => @courts.to_json
      }
    end
  end
  
  def show
    @court = Court.find(params[:id])
    respond_to do |format|
      format.json {
        render :json => @court.to_json
      }
    end
  end
  
  def create
    @court = Court.new(params[:court])
    
    respond_to do |format|
      if @court.save
        format.json {
          render :json => @court, :status => :created, :location => @court
        }
      else
        format.json {
          render :json => @court.errors, :status => :unprocessable_entity
        }
      end
    end
  end
  
  def show_comments
    @court = Court.find(params[:id])
    
    @comments = @court.comments
    @comments.each do |comment|
      comment["name"] = comment.user.name
    end
    
    respond_to do |format|
      format.json {
        render :json => @comments.to_json
      }
    end
  end
end
