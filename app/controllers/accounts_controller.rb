class AccountsController < ApplicationController
    def index
        @accounts = Account.all
    end
    def show
        @account = Account.find(params[:id])
    end
    def new
        @account = Account.new
    end
    def create
        @account = Account.new(expected_params)
        if @account.save
            redirect_to @account
        else
            render :new
        end
    end
    def edit
    end
    def update
        if @account.update(expected_params)
            redirect_to @account
        else
            render :edit
        end
    end
    def destroy
        @account.destroy
        redirect_to accounts_path
    end
    def loggingin
    end
    def login
        @account = Account.where(username: params[:username], password: params[:password])
        if @account
            redirect_to characters_path
        else
            render :loggingin
        end
    end
    private
        def expected_params
            params.expect(account: [ :username, :password ])
        end
end
