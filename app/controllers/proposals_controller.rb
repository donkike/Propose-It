class ProposalsController < ApplicationController
  def index
    @proposals = Proposal.all
  end

  def show
    @proposal = Proposal.find(params[:id])
  end

  def new
    @proposal = Proposal.new
  end
  
  def create
    @proposal = Proposal.new(params[:proposal])
    if @proposal.save
      redirect_to @proposal, :notice => "Proposal created!" 
    else
      render :action => 'new'
    end
  end

  def edit
    @proposal = Proposal.find(params[:id])
  end
  
  def update
    @proposal = Proposal.find(params[:id])
    if @proposal.update_attributes(params[:proposal])
      redirect_to @proposal, :notice => "Proposal updated!"
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    Proposal.find(params[:id]).destroy
    redirect_to proposals_path, :notice => "Proposal destroyed!" 
  end

end
