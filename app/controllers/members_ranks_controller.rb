class MembersRanksController < ApplicationController
  before_action :set_members_rank, only: [:show, :edit, :update, :destroy]

  # GET /members_ranks
  # GET /members_ranks.json
  def index
    @members_ranks = MembersRank.all
  end

  # GET /members_ranks/1
  # GET /members_ranks/1.json
  def show
  end

  # GET /members_ranks/new
  def new
    @members_rank = MembersRank.new
  end

  # GET /members_ranks/1/edit
  def edit
  end

  # POST /members_ranks
  # POST /members_ranks.json
  def create
    @members_rank = MembersRank.new(members_rank_params)

    respond_to do |format|
      if @members_rank.save
        format.html { redirect_to @members_rank, notice: 'Members rank was successfully created.' }
        format.json { render :show, status: :created, location: @members_rank }
      else
        format.html { render :new }
        format.json { render json: @members_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members_ranks/1
  # PATCH/PUT /members_ranks/1.json
  def update
    respond_to do |format|
      if @members_rank.update(members_rank_params)
        format.html { redirect_to @members_rank, notice: 'Members rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @members_rank }
      else
        format.html { render :edit }
        format.json { render json: @members_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members_ranks/1
  # DELETE /members_ranks/1.json
  def destroy
    @members_rank.destroy
    respond_to do |format|
      format.html { redirect_to members_ranks_url, notice: 'Members rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_members_rank
      @members_rank = MembersRank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def members_rank_params
      params.require(:members_rank).permit(:member_id, :ranks_id, :date)
    end
end
