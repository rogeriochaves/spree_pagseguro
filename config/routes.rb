Rails.application.routes.draw do
  get  "pagseguro_developer/confirm", to: "pag_seguro/developer#confirm"
  post "pagseguro_developer", to: "pag_seguro/developer#create"
  
  get  "/pagseguro_notify", to: 'pag_seguro_callbacks#notify'
  post "/pagseguro_notify", to: 'pag_seguro_callbacks#notify'
end
