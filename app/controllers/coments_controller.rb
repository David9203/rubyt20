class ComentsController < ApplicationController

def create
    @post= Post.find(params[:post_id])
    @coment = @post.coments.create(comentario_params)
    redirect_to post_path(@post)
  end
 

  def destroy
    @post = Post.find(params[:post_id])
    @coment = @post.coments.find(params[:id])
    @coment.destroy
    redirect_to post_path(@post)
  end

  private
    def comentario_params
      params.require(:coment).permit(:comentarista, :contenido)
    end
end
