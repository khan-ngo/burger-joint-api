class JobSerializer < ActiveModel::Serializer
  attributes :id, :task, :completed
end
