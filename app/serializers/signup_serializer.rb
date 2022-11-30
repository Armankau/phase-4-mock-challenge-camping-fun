class SignupSerializer < ActiveModel::Serializer
  attributes :id, :time, :camper, :activity
  has_one :camper
  has_one :activity
end
