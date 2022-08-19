class ArticlesController < ApplicationController
    before_action :find_article, only: [:show, :update, :destroy]
    def index
        @articles = Article.all
    end
    def show
    end
    def edit
        puts "\n\n\n #{@article.id} \n\n\n"
        puts "\n\n\n #{@article.persisted?} \n\n\n"
    end
    def new
        @article = Article.new
    end
    def create
        @article = Article.create(title: params[:article][:title], 
        content: params[:article][:content])
        render json:@article
    end
    def update
        @article.update(title: params[:article][:title], 
        content: params[:article][:content])
        redirect_to @article
    end
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to root_path
    end
    def find_article
        @article = Article.find(params[:id])
    end
end
