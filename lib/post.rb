require 'rest_client'

class Post
  class << self
    def find_all(criteria = {})
      @posts ||= get_posts
      return @posts.find_all {|post| post[:title] =~ /.*#{criteria[:title]}.*/ || post[:body] =~ /.*#{criteria[:body]}.*/} if criteria[:title] && criteria[:body]
      return @posts.find_all {|post| post[:title] =~ /.*#{criteria[:title]}.*/} if criteria[:title]
      return @posts.find_all {|post| post[:body]  =~ /.*#{criteria[:body]}.*/}  if criteria[:body]
      @posts.find_all
    end

    private
    def get_posts
      response = RestClient.get "http://jsonplaceholder.typicode.com/posts"
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
