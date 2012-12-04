require 'spec_helper'

describe Product do
  before do
    @product = Product.new(title: "Blueberry Salsa", image_url: 'xzy', price: 3.99, description: "This is awesome sauce!")
  end

subject { @product }
  it { should respond_to(:title) }
end
