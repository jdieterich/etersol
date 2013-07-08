require 'spec_helper'

describe "productos/edit" do
  before(:each) do
    @producto = assign(:producto, stub_model(Producto,
      :precio => 1,
      :nombre => "MyString",
      :descripcion => "MyString"
    ))
  end

  it "renders the edit producto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => productos_path(@producto), :method => "post" do
      assert_select "input#producto_precio", :name => "producto[precio]"
      assert_select "input#producto_nombre", :name => "producto[nombre]"
      assert_select "input#producto_descripcion", :name => "producto[descripcion]"
    end
  end
end
