module Api
  module V1
    class MoviesController < ApiController
      before_action :authenticate, only: %i[create update destroy]

      # GET /api/v1/movies
      def index
        render json: serializer(movies, options)
      end

      # GET /api/v1/movies/:slug
      def show
        render json: serializer(movie, options)
      end

      # POST /api/v1/movies
      def create
        movie = Movie.new(movie_params)

        if movie.save
          render json: serializer(movie)
        else
          render json: errors(movie), status: 422
        end
      end

      # PATCH /api/v1/movie/:slug
      def update
        movie = Movie.find_by(slug: params[:slug])

        if movie.update(movie_params)
          render json: serializer(movie, options)
        else
          render json: errors(movie), status: 422
        end
      end

      # DELETE /api/v1/movies/:slug
      def destroy
        if movie.destroy
          head :no_content
        else
          render json: errors(movie), status: 422
        end
      end

      private

      # Used For compound documents with fast_jsonapi
      def options
        @options ||= { include: %i[actors] }
      end

      # Get all movies
      def movies
        @movies ||= Movie.includes(actors: :user).all
      end

      # Get a specific movie
      def movie
        @movie ||= Movie.includes(actors: :user).find_by(slug: params[:slug])
      end

      # Strong params
      def movie_params
        params.require(:movie).permit(:name, :image_url)
      end

      # fast_jsonapi serializer
      def serializer(records, options = {})
        MovieSerializer
          .new(records, options)
          .serialized_json
      end

      # Errors
      def errors(record)
        { errors: record.errors.messages }
      end
    end
  end
end
