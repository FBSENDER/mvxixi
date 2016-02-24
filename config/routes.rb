Rails.application.routes.draw do
  root 'rule#yumaoqiu'
  get '/:action.html' => 'rule#action'
  get '/ymqvd-:video_name/' => 'ymq_video#show'
  get '/vd-:video_name/' => 'gcw_video#show'
end
