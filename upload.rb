require 'rubygems'
require 'sinatra'
require 'haml'
set :bind, '172.16.54.107'
set :port, 3000
 
get "/upload" do
  haml :upload
end
get '/' do
end
post "/upload" do
   File.open('uploads/' + params['myfile'][:filename], "w") do |f|
    f.write(params['myfile'][:tempfile].read)
  end
  return "The file was successfully uploaded!"
end



  




