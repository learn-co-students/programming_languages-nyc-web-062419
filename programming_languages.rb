# call it with an argument of the below hash:
#
# You are given a hash where the keys are the styles of the languages and the values are also hashes. These nested hashes have a key of the name of the language and value of the languages attributes, which is also a hash. These inner-most hashes have key/value pairs of type and type value. Take a look:

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

def new_hash(hash)
  final_hash = {}
  oo_hash = {}
  func_hash = {}
  hash[:oo].collect do |key, val|
    oo_hash[key] = val
  end
  oo_hash.collect do |key, val|
    oo_hash[key][:style] = [:oo]
  end
  oo_hash[:javascript][:style] = [:oo, :functional]
  # puts oo_hash
  #the following is untested on :functional
  hash[:functional].collect do |key, val|
    func_hash[key] = val
  end
  func_hash.delete(:javascript)
  func_hash.collect do |key, val|
    func_hash[key][:style] = [:functional]
  end
  # puts func_hash
  final_hash = oo_hash.merge(func_hash)
end

def test_hash(hash)
  final_hash = {}
  oo_hash = {}
  func_hash = {}
  hash[:oo].collect do |key, val|
    oo_hash[key] = val
    oo_hash[key][:style] = [:oo]
  end
  oo_hash[:javascript][:style] = [:oo, :functional]
  hash[:functional].collect do |key, val|
    func_hash[key] = val
    func_hash[key][:style] = [:functional]
  end
  func_hash.delete(:javascript)
  final_hash = oo_hash.merge(func_hash)
end

# def new_hash(hash)
#   new_hash = {}
#   hash[:oo].collect do |key, val|
#     new_hash[key] = val
#   end
#   #the following is untested on :functional
#   hash[:functional].collect do |key, val|
#     new_hash[key] = val
#   end
#   new_hash
# end


def reformat_languages(languages)
  oo_hash = {}
  func_hash = {}
  final_hash = {}
  hash[:oo].each do |key, val|
    oo_hash[key] = val
  end
  oo_hash.each do |key, val|
    oo_hash[key][:style] = [:oo]
  end
  oo_hash[:javascript][:style] = [:oo, :functional]
  #the following is untested on :functional
  hash[:functional].each do |key, val|
    func_hash[key] = val
  end
  func_hash.delete(:javascript)
  func_hash.each do |key, val|
    func_hash[key][:style] = [:functional]
  end
  final_hash = oo_hash.merge(func_hash)
end
