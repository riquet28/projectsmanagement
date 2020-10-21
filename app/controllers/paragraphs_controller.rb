class ParagraphsController < ApplicationController

  before_action :set_paragraph, only: [:edit, :update, :destroy]

  def index
    @paragraphs = Paragraph.all
  end

  def new
    @paragraph = Paragraph.new
  end

  def create
    @paragraph = Paragraph.create(paragraph_params)
    respond_to do |format|
      if @paragraph.save
        format.html { redirect_to paragraphs_path, notice: "Le paragraphe a été créé avec succès" }
        format.js
      else
        format.html { render :new, notice: "Le paragraphe n'a pas pu être créé" }
        format.js
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @paragraph.update(paragraph_params)
        format.html { redirect_to paragraphs_path, notice: "Le paragraphe a été mis à jour" }
      else
        format.html { render :edit, notice: "Le paragraphe n'a pas pu être mis à jour" }
      end
    end
  end

  def destroy
    @paragraph.destroy
    redirect_to paragraphs_path, notice: "Le paragraphe a bien été supprimé"
  end

  private

    def set_paragraph
      @paragraph = Paragraph.find(params[:id])
    end

    def paragraph_params
      params.require(:paragraph).permit(:title, :content, :position)
    end

end
