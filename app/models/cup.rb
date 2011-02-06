class Cup < ActiveRecord::Base
  def as_json(params={})
    super(params.merge({:methods => :milliseconds}))
  end

  def milliseconds
    created_at.to_i * 1000
  end
end
