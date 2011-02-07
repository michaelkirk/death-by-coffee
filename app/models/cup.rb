class Cup < ActiveRecord::Base

  default_scope order('created_at')

  def as_json(params={})
    super(params.merge({:methods => :milliseconds}))
  end

  def milliseconds
    central_timezone_offset = 6 * 60 * 60
    (created_at.to_i - central_timezone_offset) * 1000
  end
end
