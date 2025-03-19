require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/square/new") do
  erb(:besquare)
end

get("/square_root/new") do
  erb(:berooted)
end

get("/payment/new") do
  erb(:apargh)
end

get("/random/new") do
  erb(:randomizer)
end

get("/square/results") do
  erb(:besquare_results)
end

get("square_root/results") do
  erb(:berooted_results)
end

get("payment/results") do
  erb(:apargh_results)
end

get("/random/results") do
  erb(:randomizer_results)
end
