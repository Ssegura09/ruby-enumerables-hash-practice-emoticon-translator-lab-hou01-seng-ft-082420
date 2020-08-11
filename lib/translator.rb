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

def get_japanese_emoticon(emoticon_file, emoticon)
  emoticon_lib = load_library(emoticon_file)
  japanese_emoticon = emoticon_lib['get_emoticon'][emoticon]
  japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
end

def get_english_meaning
  # code goes here
end