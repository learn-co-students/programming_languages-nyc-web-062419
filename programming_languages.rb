require "pry"

def reformat_languages(languages)
  # your code here
  hash = {}
  languages.each do |style,type|
    type.each do |name, at|
      at.each do |at, str|
        if hash[name].nil?
          hash[name] = {}
        end
        if hash[name][:style].nil?
          hash[name][:style] = []
        end
        hash[name][:style] << style
        hash[name][:type] = str
      end
    end
  end
  hash
end 