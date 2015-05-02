class DailyTask < Volt::Model
  field :label, String
  field :position, Numeric

  validate :label, presence: true
  validate :position, numericality: {min: 0}

  belongs_to :daily_section
end
