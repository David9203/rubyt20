class WelcomeController < ApplicationController

    def show
         @posts = Post.all
    end
     def admin
         @users = User.all
    end
end
