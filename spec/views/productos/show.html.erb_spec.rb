require 'spec_helper'

describe "productos/show" do
  before(:each) do
    @producto = assign(:producto, stub_model(Producto,
      :precio => 1,
      :nombre => "Nombre",
      :descripcion => "Descripcion"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Nombre/)
    rendered.should match(/Descripcion/)
  end
end
