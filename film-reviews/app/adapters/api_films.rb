module Adapter 
    # # class Film
    # require 'uri'
    # require 'net/http'
    # require 'openssl'
    
    # url = URI("https://imdb-internet-movie-database-unofficial.p.rapidapi.com/film/tt1375666")
    
    # http = Net::HTTP.new(url.host, url.port)
    # http.use_ssl = true
    # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    # request = Net::HTTP::Get.new(url)
    # request["x-rapidapi-host"] = 'imdb-internet-movie-database-unofficial.p.rapidapi.com'
    # request["x-rapidapi-key"] = 'e77a8e67f4mshf60a1244f442dd9p19d981jsn25ccb418f491'
    
    # response = http.request(request)
    # puts response.read_body
    # # end
end