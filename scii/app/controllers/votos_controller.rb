class VotosController < ApplicationController

	def vote_up
		check = Voto.find(:first, :conditions => ["usuario_id = ? AND suggestion_id = ?", current_usuario.id, params[:id]])
		suggestion = Suggestion.find(params[:id])
		if check.nil?
			suggestion_vote = Voto.new
			suggestion_vote.suggestion_id = params[:id]
			suggestion_vote.usuario_id = current_usuario.id
			suggestion_vote.value = true
			suggestion_vote.save
			suggestion.pontuacao += 1
			suggestion.save
			render :text => suggestion.pontuacao
		elsif check.value == false
			check.value = true
			check.save
			suggestion.pontuacao += 2
			suggestion.save
			render :text => suggestion.pontuacao
		else
			render :text => "You have already voted up for this item."
		end
	end

	def vote_down
		check = Voto.find(:first, :conditions => ["usuario_id = ? AND suggestion_id = ?", current_usuario.id, params[:id]])
		suggestion = Suggestion.find(params[:id])
		if check.nil?
			suggestion_vote = Voto.new
			suggestion_vote.suggestion_id = params[:id]
			suggestion_vote.usuario_id = current_usuario.id
			suggestion_vote.value = true
			suggestion_vote.save
			suggestion.pontuacao -= 1
			suggestion.save
			render :text => suggestion.pontuacao
		elsif check.value == true
			check.value = false
			check.save
			suggestion.pontuacao -= 2
			suggestion.save
			render :text => suggestion.pontuacao
		else
			render :text => "You have already voted down for this item."
		end
	end

end
