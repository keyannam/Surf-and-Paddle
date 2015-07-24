class Post1Controller < ApplicationController

  class Post1
    attr_accessor :name, :photo
    def initialize(name, photo)
    @name = name
    @photo = photo
    end
  end

  before_action do

    @post1_name = []
    @post1_name << Post1.new("This is the first awesome post" ,'another-cool-picture.jpg')
    @post1_name << Post1.new("Another Cool Post" ,"article-bottom-1.jpg")
    @post1_name << Post1.new("Post Title" ,"bottom-3")
    @post1_name << Post1.new("Here's Another Long Post Title" ,"bottom-4.jpg")
  end


  def index
    @post1 = @post1_name.first
    render :show
  end
  

  def show
    @post = @post_name.find do |post|
      post.name == params[:post_name]
    end
  end
end
