class PhrasesController < ApplicationController
  before_action :update_phrases, only: [:index]

  # GET /phrases
  # GET /phrases.json
  def index
    @phrase = Phrase.where(state: nil).order("RANDOM()").first
    cookies[:phrase_id] = @phrase.id
    respond_to do |format|
      format.html
      format.js
    end
  end

 

  private
   
    # Never trust parameters from the scary internet, only allow the white list through.
    
    def update_phrases
      if cookies[:phrase_id].present?
        @sequence = Phrase.order("sequence ASC").last.sequence
        if @sequence == Phrase.count 
          Phrase.reset_all
        else
          @last_phrase = Phrase.where(id: cookies[:phrase_id]).first
          @last_phrase.update(state: 'displayed', sequence: @sequence+1)  
        end
      end 
    end 
end
