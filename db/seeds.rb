Level.delete_all
json = ActiveSupport::JSON.decode(File.read('db/seeds/levels.json'))
json.each do |a|
  Level.create(a)
end

Usage.delete_all
json = ActiveSupport::JSON.decode(File.read('db/seeds/usages.json'))
json.each do |a|
  Usage.create(a)
end


