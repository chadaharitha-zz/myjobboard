
class JobResultsController < ApplicationController

  def index
  	
     

 
      #raise session.inspect    
      if !params[:keyword].blank? && !params[:location].blank?
      	    session[:keyword]  = params[:keyword] 
      session[:location] = params[:location] 
        @results = jobsearchresult(:keywords => params[:keyword],:Location => params[:location],:PageNumber =>params[:pno] )
      elsif  !params[:keyword].blank? && params[:location].blank?
      	    session[:keyword]  = params[:keyword] 
      session[:location] = ""
        @results = jobsearchresult(:keywords => params[:keyword],:PageNumber =>params[:pno] )
      elsif  params[:keyword].blank? && !params[:location].blank?
       session[:keyword]  = ""
      session[:location] = params[:location] 
        @results = jobsearchresult(:Location => params[:location],:PageNumber =>params[:pno] )
      else
        #raise "#{params.inspect} #{session.inspect}"
        @results = jobsearchresult(:PageNumber =>params[:pno],:keywords => session[:keyword],:Location => session[:location])  

  end
 
  end
end

 