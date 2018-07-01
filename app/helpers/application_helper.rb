module ApplicationHelper
	def has_errors?(model)
		render partial: 'shared/has_errors', locals: {model: model}
	end
end
