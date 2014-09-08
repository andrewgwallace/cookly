class ChefsController < ApplicationController

  def index
    @chefs = Chef.all
  end

  def show
    @chef = Chef.find(params[:id])
  end

  def new
    @chef = Chef.new
  end

  def create
    chef_hash = params[:chef]
    if chef_hash[:password] == chef_hash[:password_confirmation]
      chef = Chef.new
      chef.password = chef_hash[:password]
      chef.name = chef_hash[:name]
      chef.bio = chef_hash[:bio]
      chef.email = chef_hash[:email]
      chef.save

      if chef.valid?
        # log the chef in once registered
        @current_user = chef
        redirect_to "chef/login"
      else
        redner text: "Email is already taken!"
      end
    else
      render text: "Passwords did not match!"
    end

  end

  def login

  end

  def process_login
    #process login form

    email = params[:email]
    password = params[:pasword]

    @current_user = Chef.authenticated?(email, password)

    if @current_user
      redirect_to cookbooks_path
    else
      render text: "Login failed!  invalid email or password!"
    end
  end
end
