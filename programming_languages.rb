def reformat_languages(languages)
  result = {}
languages.each do |style, langdetails|
  langdetails.each do |langname, type|
    if result[langname] == nil
      result[langname] = type
      result[langname].store :style, [style]
    else
      result[langname][:style] << style

   end
  end
end
result
end
