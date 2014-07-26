class Setting < ActiveRecord::Base
  validates_presence_of :name
  
  
  def value
    if self.setting_type == "integer"
      self[:value].to_i
    elsif self.setting_type == "float"
      self[:value].to_f
    elsif self.setting_type == "boolean"
      !self[:value].nil? and eval(self[:value]) ? true : false
    else
      self[:value]
    end
  end
  
end
