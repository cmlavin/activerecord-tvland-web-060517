class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(network)
    new_network = Network.new(network)
    self.network = new_network
  end
end
