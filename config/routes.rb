Rails.application.routes.draw do
  
  get("/", {:controller=> "calculations", :action=>"flex_square"})
  get("/flexible/square/:a_number", { :controller=> "calculations", :action=>"flex_square"})
  get("/flexible/square_root/:a_number", { :controller=> "calculations", :action=>"flex_square_root"})
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", { :controller=> "calculations", :action=>"flex_payment"})
  get("/flexible/random/:min/:max", { :controller=> "calculations", :action=>"flex_random"})
  get("square/new",{ :controller=> "calculations", :action =>"square_form"})
  get("square/results",{ :controller=> "calculations", :action =>"process_square"})
  get("square_root/new",{ :controller=> "calculations", :action =>"square_root_form"})
  get("square_root/results",{ :controller=> "calculations", :action =>"process_square_root"})
  get("payment/new",{ :controller=> "calculations", :action =>"payment_form"})
  get("payment/results",{ :controller=> "calculations", :action =>"process_payment"})
  get("random/new",{ :controller=> "calculations", :action =>"random_form"})
  get("random/results",{ :controller=> "calculations", :action =>"process_random"})
  get("wordcount/new",{ :controller=> "calculations", :action =>"wordcount_form"})

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
