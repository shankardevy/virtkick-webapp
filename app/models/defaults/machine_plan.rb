require 'active_hash'

class Defaults::MachinePlan < ActiveHash::Base
  plans = [
      [0.25, 20, 'virtkick-hdd', 1],
      [0.5, 30, 'virtkick-hdd', 1],
      [1, 50, 'virtkick-hdd', 1],
  ]

  field :id
  field :memory
  field :cpu
  field :storage
  field :storage_type

  self.data = plans.map.with_index do |plan, i|
    {
      id: i + 1,
      memory: plan[0],
      storage: plan[1].gigabytes,
      storage_type: plan[2],
      cpu: plan[3],
    }
  end
end
