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
  @basenum = params["number"].to_i
  @squarer = @basenum * @basenum
  erb(:besquare_results)
end

get("/square_root/results") do
  @basenum = params["number"].to_i
  @rooter = @basenum ** 0.5
  erb(:berooted_results)
end

get("/payment/results") do
  erb(:apargh_results)
end

get("/random/results") do
  erb(:randomizer_results)
end
