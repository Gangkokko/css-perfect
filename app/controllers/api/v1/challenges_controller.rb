# frozen_string_literal: true

module Api
  module V1
    class ChallengesController < ApplicationController
      def create
        @challenge = Challenge.new(challenge_params)

        if @challenge.save
          render json: { status: 'SUCCESS', data: @challenge }
        else
          render json: { status: 'ERROR', data: @challenge.errors }
        end
      end

      private

      def challenge_params
        params.require(:challenge).permit(:stage_id, :user_id)
      end
    end
  end
end
