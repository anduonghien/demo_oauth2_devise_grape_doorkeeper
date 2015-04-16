class RootV1 < Grape::API
	include APIGuard
	version 'v1'
	format :json
	prefix :api

	get "/" do
		"abc"
	end

	get "/secret" do
      guard!
      { :secret => "only smart guys can see this ;)" }
	end

end