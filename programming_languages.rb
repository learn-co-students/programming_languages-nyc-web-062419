def reformat_languages(languages)

  new_hash={}

languages.each do |oo_funtional_hash, languages_hash|
  languages_hash.each do |language_name, data_hash|
    data_hash.each do |attribute, string_val|
      if new_hash[language_name].nil? then new_hash[language_name]={}
        
    end
new_hash[language_name][:style] ||= []
new_hash[language_name][:style].push(oo_funtional_hash)
if new_hash[language_name][attribute].nil? then new_hash[language_name][attribute]=string_val
end 
end 
end 
end 
new_hash
end 



  