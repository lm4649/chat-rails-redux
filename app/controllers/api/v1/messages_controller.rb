class Api::V1::MessagesController < ApplicationController
  before_action :find_channel, only: [:index]
  def index
    @messages = @channel.messages.order(created_at: :asc)
    render json: @messages
  end

  def create
  end

  private

  def find_channel
    @channel = Channel.find_by(name: params[:channel_id])
  end
end
