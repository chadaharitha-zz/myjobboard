JobBoard::Application.routes.draw do
  resources :applyonlines
  resources :jobdetails


  #match "job_results/index/:pno" => "job_results#index", :as => :job_results_view

  match "jobdetails" => "jobdetails#index", :as => :job_detail_view
  match "applyonlines" => "applyonlines#index", :as => :job_apply_view  
 match 'applyonlines/applyfinish' => 'applyonlines#applyfinish', :as => :applyfinish
   match "job_results/index/:pno" => "job_results#index", :as => :index
  
end
