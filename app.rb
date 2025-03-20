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
  @basenum = params["number"].to_f
  @squarer = @basenum * @basenum
  erb(:besquare_results)
end

get("/square_root/results") do
  @basenum = params["number"].to_f
  @rooter = @basenum ** 0.5
  erb(:berooted_results)
end

get("/payment/results") do
  @apr = params["user_apr"].to_f
  @years = params["user_years"].to_i
  @principal = params["user_pv"].to_f

  @rate = @apr / 100 / 12
  @adjrate = @rate + 1
  @period = @years * 12

  @raghu1 = @rate * @principal
  @raghu2 = @rate + 1
  @whyme = @period * -1
  @raghu3 = @raghu2 ** @whyme - 1
  @almost = @raghu1 / @raghu3
  @pay = @almost * -1

  erb(:apargh_results)
end

get("/random/results") do
  @minfloat = params["user_min"].to_f
  @maxfloat = params["user_max"].to_f
  @randfloat = rand(@minfloat..@maxfloat)
  erb(:randomizer_results)
end
