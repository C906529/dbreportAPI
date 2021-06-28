Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'v1' do
    resources :featureslog
    resources :testruns do
      collection do
        post 'createExecutionData'
        get 'getExecutiondetails'
        get 'getRundetailsByExecutionId'
        get 'getRunSummaryByExecutionId'
        get 'getScenariosByErrors'
      end
    end
    end
end
