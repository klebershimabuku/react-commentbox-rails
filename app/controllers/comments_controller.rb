class CommentsController < ApplicationController
  respond_to :json, :html

  def index
    respond_with(Comment.all)
  end

  def create
    comment = Comment.create(author: params["author"], comment: params["comment"])
    respond_with(comment)
  end
end
