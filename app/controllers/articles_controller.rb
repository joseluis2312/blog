class ArticlesController < ApplicationController
#	before_action :validate_user, except: [:show,:index]
#	before_action :authenticate_user!, only:[:create,:edit,:new]
	before_action :authenticate_user!, except: [:show,:index]
	before_action :set_article , except: [:index,:new,:create]
	#GET /articles
	def index
		@articles = Article.all


	end

#GET /articles:id
	def show
 		@article.update_visit_count
 		@comment = Comment.new
	end

	def new
		@article =Article.new
	end
	def edit
	end
	# DELETE /articles/:id
	def destroy
		@article.destroy
		redirect_to articles_path
	end
    #POST /articles
	def create
#		@article =Article.new(title:params[:article][:title],
#								body: params[:article][:body]
#			)

#		@article =Article.new(article_params)
		@article = current_user.articles.new(article_params)
		if @article.save
		redirect_to @article
		else
			render:new
		end
			
	end
	#PUT /articles/:id
	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to @article
		else
			render :edit
		end

	end

	private

	def article_params

		params.require(:article).permit(:title,:body,:cover)
	end
	def validate_user
		redirect_to new_user_session_path, notice:"Necesitas iniciar sesión"
	end
	def set_article
		@article = Article.find(params[:id])
	end

end
