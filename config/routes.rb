Rails.application.routes.draw do
  root 'rule#yumaoqiu'
  get '/:action.html' => 'rule#action'
end
