require 'csv'

# File.open("파일명", "뭘 할지")

CSV.open("store.csv", "w+") do |s|
    s << ["", , ]
end