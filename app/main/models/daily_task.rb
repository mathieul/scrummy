class DailyTask < Volt::Model
  field :label, String
  field :position, Numeric
  field :completed_time, String

  validate :label, presence: true
  validate :position, numericality: {min: 0}

  belongs_to :daily_section

  def completed_at
    field_at(:completed_time)
  end

  def completed_at=(value)
    set_field_at(:completed_time, value)
  end

  private

  def field_at(name)
    value = public_send(name)
    value.present? ? Time.parse(value) : nil
  end

  def set_field_at(name, value)
    string_value = value.present? ? value.strftime('%Y-%m-%d %H:%M:%S %Z') : nil
    public_send(:"#{name}=", string_value)
  end
end
