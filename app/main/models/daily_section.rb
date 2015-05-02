class DailySection < Volt::Model
  field :label, String
  field :color, String
  field :position, Numeric

  validate :label, presence: true
  validate :color, presence: true
  validate :position, numericality: {min: 0}

  has_many :daily_tasks
end
