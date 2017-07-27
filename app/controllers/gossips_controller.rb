class GossipsController < ApplicationController

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
       if @gossip.save
        redirect_to new_gossip_path
      else
        render :new
      end
  end

  private

  def gossip_params
      params.require(:gossip).permit(:anonymous_author, :content)
    end

end
