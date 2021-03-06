class EntriesController < ApplicationController
  load_and_authorize_resource :user
  load_and_authorize_resource :time_sheet, through: :user
  load_and_authorize_resource :entry, through: :time_sheet

  before_filter :get_user

  def get_user
    @user = User.find(params[:user_id])
  end

  before_filter :get_time_sheet

  def get_time_sheet
    @time_sheet = TimeSheet.find(params[:time_sheet_id])
  end

  # GET /entries
  # GET /entries.json
  def index
    @entries = @time_sheet.entries

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entries }
    end
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
    @entry = @time_sheet.entries.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entry }
    end
  end

  # GET /entries/new
  # GET /entries/new.json
  def new
    @entry = Entry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entry }
    end
  end

  # GET /entries/1/edit
  def edit
    @entry = @time_sheet.entries.find(params[:id])
  end

  # POST /entries
  # POST /entries.json
  def create
    @entry = @time_sheet.entries.new(params[:entry])

    respond_to do |format|
      if @entry.save
        # [@user, @time_sheet, @entry]
        # user_time_sheet_entries_path(@user, @time_sheet)
        format.html { redirect_to user_time_sheet_entries_path(@user, @time_sheet), notice: 'Hours were successfully added.' }
        format.json { render json: [@user, @time_sheet, @entry], status: :created, location: [@user, @time_sheet, @entry] }
      else
        format.html { render action: "new" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entries/1
  # PUT /entries/1.json
  def update
    @entry = @time_sheet.entries.find(params[:id])

    respond_to do |format|
      if @entry.update_attributes(params[:entry])
        format.html { redirect_to [@user, @time_sheet, @entry], notice: 'Hours were successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry = @time_sheet.entries.find(params[:id])
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to user_time_sheet_entries_url }
      format.json { head :no_content }
    end
  end
end
