require_relative 'AbstractModule'  

class RedditModule < AbstractModule  
  def try_login(exzsaa, password)  
  	payload = {'user' => exzsaa, 'passwd' => password, 'api_type' => 'json'}
		headers = { 'user-agent' => user_agent, 'Content-Type' => 'application/x-www-form-urlencoded'}
		response = RestClient.post("http://www.reddit.com/api/login/", payload, :headers => headers){|response, request, result| response }
  	
  	return !(response.body.include? "wrong password")
  end  
end  
