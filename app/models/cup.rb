class Cup < ActiveRecord::Base
  def as_json(params={})
    super(params.merge({:methods => :int_time}))
  end

  def int_time
    created_at.to_i
  end
end
