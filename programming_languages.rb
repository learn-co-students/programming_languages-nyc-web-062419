def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language_set|
    language_set.each do |name, attributes|
      if new_hash.keys.include?(name)
        new_hash[name][:style] << style
      else
        new_hash[name] = attributes
        new_hash[name][:style] = [style]
      end
    end
  end

  new_hash
  # your code here
end
