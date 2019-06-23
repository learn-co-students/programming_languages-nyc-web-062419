def reformat_languages(languages)
  hash = {}
  languages.each do |style, language|
    language.each do |name, attributes|
    hash[name] ||= attributes
    hash[name][:style]=[]
    hash[name][:style] << style
    end
  end
    hash[:javascript][:style] << :oo
  hash
end
