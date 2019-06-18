def reformat_languages(languages)
  # your code here

  new_hash = {}

  languages.each do |sty, sty_hash|
    sty_hash.each do |lang, type_hash|

      if new_hash.key?(lang)
        new_hash[lang][:style].push(sty)
      else
        new_hash[lang] = {type: type_hash[:type], style: [sty]}
      end

    end
  end

  new_hash

end
