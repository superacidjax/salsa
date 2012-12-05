require 'spec_helper'

describe Product do

  before do
    @product = Product.new(title: "Blueberry Salsa", image_url: 'xzasfafafy',
                           price: 3.99, description: "This is awesome sauce!")
  end

subject { @product }

  it { should respond_to(:title) }
  it { should respond_to(:image_url) }
  it { should respond_to(:price) }
  it { should respond_to(:description) }

  it { should be_valid }

  describe "when title is not present" do
    before { @product.title = " " }
    it { should_not be_valid }
  end

  describe "when image_url is not present" do
    before { @product.image_url = " " }
    it { should_not be_valid }
  end

  describe "when description is not present" do
    before { @product.description = " " }
    it { should_not be_valid }
  end
end