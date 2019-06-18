require 'pry'
require 'byebug'

def reformat_languages(languages)
	new_hash = {}
	languages.each do |style, language_and_type|
		language_and_type.each do |language, type|
		new_hash[language] = type
		new_hash[language][:style] = []
		new_hash[language][:style] << style
		end
	end
	new_hash[:javascript][:style] << :oo
	new_hash
end
