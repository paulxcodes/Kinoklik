module Api
  module V1
    class ActorsController < ApiController
      before_action :authenticate

       def index

        render json: serializer(actors)
      end

      def show
        render json: serializer(actor)
      end


      def create
        actor = Actor.new(actor_params)

        if actor.save
          render json: serializer(actor)
        else
          render json: errors(actor), status: 422
        end
      end

      def update
        actor = Actor.find_by(slug: params[:slug])

        if actor.update(actor_params)
          render json: serializer(actor, options)
        else
          render json: errors(actor), status: 422
        end
      end

    private

      # Get all actors
      def actors
        @actors ||= Actor.includes(movie: :user).all
      end

      # Get a specific actor
      def actor
        @actor ||= Actor.includes(actor: :user).find_by(slug: params[:slug])
      end

      # Strong params
      def actor_params
        params.require(:actor).permit(:name, :biography)
      end
  end
end

