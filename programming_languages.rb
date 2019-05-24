require 'pry'
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}



#{
 # :ruby => {
 #   :type => "interpreted",
 #   :style => [:oo]
 # }
 def construct_top arr,hash
    arr.each do |language|
      hash[language] = {type:'blank',style: []}
    end
  end

def populate_hash old,new_hash
  old.each do |style,languages|
    languages.each do |language, type|
      new_hash[language][:style] <<  style
      new_hash[language][:type] = type.values[0]
    end
  end
end


def reformat_languages(languages)
  new_hash = Hash.new 
  top_level = languages.values.collect {|value| value.keys}.flatten
  construct_top top_level,new_hash
  populate_hash languages,new_hash
  languages = new_hash
end
reformat_languages languages


