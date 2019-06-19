call it with an argument of the below hash:

You are given a hash where the keys are the styles of the languages and the values are also hashes. These nested hashes have a key of the name of the language and value of the languages attributes, which is also a hash. These inner-most hashes have key/value pairs of type and type value. Take a look:

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

# the following can be used to create a new hash out of either top level values
# all thats needed afterwards is to add the :style key/value to each languages value
def new_hash(hash)
  new_hash = {}
  hash[:oo].collect do |key, val|
    new_hash[key] = val
  end
  #the following is untested on :functional
  hash[:functional].collect do |key, val|
    new_hash[key] = val
  end
  new_hash
end


def reformat_languages(languages)
  # your code here
end
