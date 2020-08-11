require 'yaml'
#emoticon_file = YAML.load_file('./lib/emoticons.yml')
#emoticon = '(#^.^#)'

def load_library(emoticon_file)
  emoticons = YAML.load_file('./lib/emoticons.yml')

 new_hash = {}

  emoticons.each do |key,value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
  end

  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end