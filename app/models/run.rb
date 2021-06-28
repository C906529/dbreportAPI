class Featurelog
  include Mongoid::Document
  include Mongoid::Timestamps
  field :logs, type: String
end
