class EpisodesController < ApplicationController
  before_action :logged_in_admin, only: [:index, :show, :update, :destroy, :dump]
  before_action :set_episode, only: [:show, :edit, :update, :destroy]

  # GET /episodes
  # GET /episodes.json
  def index
    @episodes = Episode.all
  end

  def dump
    # ids = params[:target].inject(&:to_i)
    @episodes = Episode.where(id: params[:ep_ids])
    output = render_to_string(template: 'episodes/dump.tex.erb').gsub!(/^<.*?>$/, '')

    send_data output, filename: "ep-dump-#{Time.now.to_date.to_s}.tex"
  end

  # GET /episodes/1
  # GET /episodes/1.json
  def show
  end

  # GET /episodes/new
  def new
    @episode = Episode.new
  end

  # GET /episodes/1/edit
  def edit
  end

  # POST /episodes
  # POST /episodes.json
  def create
    @episode = Episode.new(episode_params)

    respond_to do |format|
      if @episode.save
        format.html { redirect_to @episode, notice: 'Episode was successfully created.' }
        format.json { render :show, status: :created, location: @episode }
      else
        format.html { render :new }
        format.json { render json: @episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /episodes/1
  # PATCH/PUT /episodes/1.json
  def update
    respond_to do |format|
      if @episode.update(episode_params)
        format.html { redirect_to @episode, notice: 'Episode was successfully updated.' }
        format.json { render :show, status: :ok, location: @episode }
      else
        format.html { render :edit }
        format.json { render json: @episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /episodes/1
  # DELETE /episodes/1.json
  def destroy
    @episode.destroy
    respond_to do |format|
      format.html { redirect_to episodes_url, notice: 'Episode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_episode
      @episode = Episode.find(params[:id])
    end

    def dump_params
      params.require(:episode).permit(
        target: []
      )
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def episode_params
      params.require(:episode).permit(
        :name,
        :dept,
        :activities,
        :destination,
        :record_1st,
        :record_2nd,
        :record_3rd,
        :record_4th,
        :advise,
        :comment,
        :motivation,
        :how_to_choice,
        :how_to_clear_internal_test,
        univs_attributes: [
          :id,
          :name,
          :dept,
          :admission_method,
          :result,
          :exam_info,
          :interview_info,
          :tendency,
          subjects_attributes: [
            :id,
            :title,
            :study_method,
            books_attributes: [
              :id,
              :title,
              :press,
              :comment
            ]
          ]
        ],
        timelineitems_attributes: [
          :id,
          :grade,
          :period,
          :studying_time,
          :content
        ],
        questions_attributes: [
          :teacher,
          :qstn,
          :answer
        ])
    end
end
