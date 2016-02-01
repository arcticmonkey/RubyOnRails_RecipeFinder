class Recipe
    include HTTParty
    ENV["FOOD2FORK_KEY"] = '839dd836ffcd3ad4df23afb769577b5e'
  	base_uri 'http://food2fork.com/api'
  	default_params key: ENV["FOOD2FORK_KEY"]
  	format :json

  	def self.for term
    	get("/search", query: { q: term})["recipes"]
  	end
end
