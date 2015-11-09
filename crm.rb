require_relative 'contact'
require 'sinatra'

	Contact.create("Yehuda", "Katz", {:email => "yehuak@hotmail.com"})
	Contact.create("Mark", "Zuckerberg", {:email => "mark@facebook.com"})
	Contact.create("Sergey", "Brin", { :email =>"sergey@google.com"})

get "/contacts" do 
erb :contacts
end 

get '/home' do
	@crm_app_name = "My CRM"
	erb :index1
end 

get '/contact' do
	erb :index1
end

get '/contacts/new' do 
	erb :new_contact
end 

post '/contacts' do
	puts params
	Contact.create(params[:fist_name], params[:last_name], params[:email], params[:note])
	redirect to('/contacts')
end 

# post '/contacts' do 
# 	Contact.create(params[:fist_name], params[:last_name], params[:email], params[:note])
# end
