class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def new
    @candidate = Candidate.new
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def create
    byebug
    @candidate = Candidate.new(candidate_params)
    @candidate.save

    respond_to do |f|
      f.html { redirect_to candidates_path }
      f.js
    end
  end

  def update
    byebug
    @candidate = Candidate.find(params[:id])

    if @candidate.update(candidate_params)
      redirect_to @candidate
    else
      render 'edit'
    end
  end

  def destroy
    @candidate = Candidate.find(params[:id])
    @candidate.destroy

    redirect_to candidates_path
  end

  def form

  end

  private

  def candidate_params
    params.require(:candidate).permit(:name, :email)
  end
end
