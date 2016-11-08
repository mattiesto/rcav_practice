Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:id", { :controller => "calculations", :action => "square_root" })

  get("/square/:id", { :controller => "calculations", :action => "square" })

  get("/random/:min/:max", { :controller => "calculations", :action => "random" })

  get("/payment/:ir/:noy/:pv", { :controller => "calculations", :action => "payment" })
end
