class PostsController < ApplicationController
    def index
        @new_post = Post.new
        @all_posts = Post.order(created_at: :desc).all
    end
    
    def create
        @posts = Post.new(post_params)
        if @posts.save
            redirect_to thanks_path
        else
            render 'new'
        end
    end
    
    private
        def post_params
            params.require(:post).permit(:comment)
        end
end
