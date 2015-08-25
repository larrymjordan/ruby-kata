
$: << File.expand_path('../lib', File.dirname(__FILE__))

require 'minitest/autorun'
require 'minitest/spec/expect'
require 'rest_client'
require 'json'
require 'post'

describe Post do
  it "should find posts by title in array" do
    posts = Post.find_all(title: 'reprehenderit')
    posts.size.must_equal 2
  end

  it "should find posts by body in array" do
    posts = Post.find_all(body: 'reprehenderit')
    posts.size.must_equal 12
  end

  it "should find posts by title or body with whatever criteria you pass" do
    post = Post.find_all(title: 'reprehenderit', body: 'reprehenderit')
   post.size.must_equal 13
  end

  it "should find all posts if criteria is not specified" do
    post = Post.find_all
    post.size.must_equal 100
  end
end
