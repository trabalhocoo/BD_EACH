class VotosController < ApplicationController

	def vote_up
		@image = Image.find(params[:image_id])
		check = Voto.find(:first, :conditions => ["usuario_id = ? AND suggestion_id = ?", current_usuario.id, params[:id]])
		suggestion = Suggestion.find(params[:id])
		if check.nil?
			suggestion_vote = Voto.new
			suggestion_vote.suggestion_id = params[:id]
			suggestion_vote.usuario_id = current_usuario.id
			suggestion_vote.value = true
			suggestion_vote.save
			suggestion.pontuacao += 1
			@image.pontuacao += 1
			@image.save
			current_usuario.save
			suggestion.save
			redirect_to @image
		elsif check.value == false
			check.value = true
			check.save
			suggestion.pontuacao += 2
			@image.pontuacao += 2
			@image.save
			current_usuario.save
			suggestion.save
			redirect_to @image
		else
			redirect_to @image, :alert => "Você já votou!"
		end
	end

	def vote_down
		@image = Image.find(params[:image_id])
		check = Voto.find(:first, :conditions => ["usuario_id = ? AND suggestion_id = ?", current_usuario.id, params[:id]])
		suggestion = Suggestion.find(params[:id])
		if check.nil?
			suggestion_vote = Voto.new
			suggestion_vote.suggestion_id = params[:id]
			suggestion_vote.usuario_id = current_usuario.id
			suggestion_vote.value = true
			suggestion_vote.save
			suggestion.pontuacao -= 1
			@image.pontuacao -= 1
			@image.save
			current_usuario.save
			suggestion.save
			redirect_to @image
		elsif check.value == false
			check.save
			suggestion.pontuacao -= 2
			@image.pontuacao -= 2
			@image.save
			current_usuario.save
			suggestion.save
			redirect_to @image
		else
			redirect_to @image,  :alert => "Você já votou!"
		end
	end

end
