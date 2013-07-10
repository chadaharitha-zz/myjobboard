class JobdetailsController < ApplicationController

 def index

  puts 
    @jobdetail = jobdetail(:DID => params[:jobDID])  
  end


end
