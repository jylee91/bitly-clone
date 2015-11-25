get '/' do
  @urls = Url.all
  erb :"static/index"
end

post '/url' do
	p params[:original_url]
	url = Url.create(original_url: params[:original_url])
	# url.short_url = url.shorten
	# url.save
	redirect '/'
end

get "/:user_input_short_url" do
	url = Url.find_by(short_url: params[:user_input_short_url])
	unless url.nil?
		url.counter +=1
		url.save
		redirect url.original_url
	else
		redirect '/'
	end
end