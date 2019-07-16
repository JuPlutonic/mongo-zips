class Zip
  include ActiveModel::Model

  def persisted?
    !@id.nil?
  end

  def created_at
    nil
  end

  def updated_at
    nil
  end
end
