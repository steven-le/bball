class CommentsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  
  def index
    @comments = Comment.all
    respond_to do |format|
      format.json {
        render :json => @comments.to_json
      }
    end
  end
  
  def show
    @comment = Comment.find(params[:id])
    respond_to do |format|
      format.json {
        render :json => @comment.user.to_json
      }
    end
  end
  
  def create
    @comment = Comment.new(params[:comment])
    
    respond_to do |format|
      if @comment.save
        format.json {
          render :json => @comment, :status => :created, :location => @comment
        }
      else
        format.json {
          render :json => @comment.errors, :status => :unprocessable_entity
        }
      end
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    respond_to do |format|
      format.json {
        head :no_content
      }
    end
  end
end
