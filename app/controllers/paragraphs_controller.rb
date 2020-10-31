class ParagraphsController < ApplicationController

  before_action :set_paragraph, only: [:edit, :update, :destroy, :move]

  def index
    @paragraphs = Paragraph.all
    @paragraph = Paragraph.new
  end

  def new
    @paragraph = Paragraph.new
    @paragraph.sub_paragraphs.build
  end

  def create
    @paragraph = Paragraph.create(paragraph_params)
    respond_to do |format|
      if @paragraph.save
        format.html { redirect_to paragraphs_path, notice: "Le paragraphe a été créé avec succès" }
        format.js
      else
        format.html { redirect_to paragraphs_path, notice: "Le paragraphe n'a pas pu être créé" }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @paragraph.update(paragraph_params)
        format.html { redirect_to paragraphs_path, notice: "Le paragraphe a été mis à jour" }
        format.js
      else
        format.html { redirect_to paragraphs_path, notice: "Le paragraphe n'a pas pu être mis à jour" }
      end
    end
  end

  def move
    @paragraph.insert_at(params[:position].to_i)
    head :ok
  end

  def destroy
    @paragraph.destroy
    respond_to do |format|
      format.html {redirect_to paragraphs_path, notice: "Le paragraphe a bien été supprimé"}
      format.js
    end
  end

  private

    def set_paragraph
      @paragraph = Paragraph.find(params[:id])
    end

    def paragraph_params
      params.require(:paragraph).permit(:title, :content, :position, sub_paragraphs_attributes: [:id, :title, :content, :position, :paragraph_id, :_destroy])
    end

end
