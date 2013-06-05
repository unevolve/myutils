# require rubygems and sinatra so you can run this application locally with ruby app.rb
require 'rubygems'
require 'sinatra'

get '/' do
	"<h1>Welcome to My Utilities</h1>
    <br /><br />check out your <a href=\"/agent\">user_agent</a>
    <br /><br /><a href=\"/use\">Decide</a> what to use today."
end

get '/agent' do
  "you're using #{request.user_agent}"
end

get '/use' do
	#decide which linux box to use
	#a = rand(1..100);
	#b = rand(1..100);
	fedora = 0;
	ubuntu = 0;

	for i in 0..6
		a = rand(1..100);
		b = rand(1..100);
		if a >= b
			fedora += 1;
		else
			ubuntu += 1;
		end
		i +=1;
	end

	"fedora = #{fedora} ubuntu = #{ubuntu}"
end
