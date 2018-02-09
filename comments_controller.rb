require 'rack-flash'
class CommentsController < ApplicationController
  use Rack::Flash

#   get '/comments' do
#     if session[:user_id]
#       @comments = Comment.all
#       @user = User.find_by_id(session[:user_id])
#       @comment = Comment.create(:name => params[:name], :user_id => @user.id)
#       @event = Event.create(:title => params[:title], :date => params[:date], :volunteers_needed => params[:volunteers_needed], :description => params[:description], :user_id => @user.id)
#       erb :'comments/home'
#     else
#       redirect to 'users/login'
#     end
#   end
#
#       get '/comments/new' do
#         if session[:user_id]
#           @event.comment = Comment.find_by_id(params[:id])
#           erb :"/comments/new"
#         else
#           redirect to 'users/login'
#         end
#       end
#
  post '/comments' do
      @user = User.find_by_id(session[:user_id])
      @event = Event.find_by_id(params[:event])
      @comment = Comment.create(:content => params[:content], :event_id => @event.id, :user_id => @user.id)
      redirect to "/events/#{@event.id}"
    end
end
#
#   get '/comments/:id' do
#     if session[:user_id]
#       @comment = Comment.find_by_id(params[:id])
#       erb :'comments/show'
#     else
#       redirect to '/login'
#     end
#   end
#
#   get '/comments/:id/edit' do
#     if session[:user_id]
#       @comment = Comment.find_by_id(params[:id])
#        @comment.user_id == @event.user.id
#
#         erb :'comments/edit'
#   else
#       redirect to '/login'
#     end
#   end
#
# patch '/events/:id' do
#       @comment = Comment.find_by_id(params[:id])
#       @user.comment.name = params[:name]
#       @comment.save
#       flash[:message] = "You have successfully updated comment."
#       redirect to "/comments/#{@comment.id}"
#     end
#
#
#   delete '/comments/:id/delete' do
#     if session[:user_id]
#       @comment = Comment.find_by_id(params[:id])
#       if @comment.user_id == session[:user_id]
#         @comment.delete
#         flash[:message] = "You have successfully deleted comment."
#         redirect to '/comments'
#       else
#         redirect to '/comments'
#       end
#     else
#       redirect to '/login'
#     end
#   end
# end
