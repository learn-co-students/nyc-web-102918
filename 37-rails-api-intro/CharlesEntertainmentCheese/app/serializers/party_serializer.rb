class PartySerializer < ActiveModel::Serializer
  has_many :kids
  attributes :id, :name, :theme, :kids
end
