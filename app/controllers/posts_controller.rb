class PostsController < ApplicationController

  def index
    @posts = Post.all
    @title = "Crazy About Invader Zim"
    @subheading = "An informative guide on world domination"
  end

  def show
    @post = Post.find(params[:id].to_i)
    @title = @post.title
    @subheading = @post.summary
   end

   def about
     @title = "Just another Fan"
     @subheading = "Who loves that crazy robot"
   end

end
