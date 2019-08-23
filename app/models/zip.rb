# frozen_string_literal: true

class Zip
  # include ActiveModel::Model
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: String
  field :city, type: String
  field :state, type: String
  field :population, type: Integer

  # attr_accessor :id, :city, :state, :population

  # def to_s
  #   "#{@id}: #{@city}, #{@state}, pop=#{@population}"
  # end
end
