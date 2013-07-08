require 'spec_helper'

describe "productos/index" do
  before(:each) do
    assign(:productos, [
      stub_model(Producto,
        :precio => 1,
        :nombre => "Nombre",
        :descripcion => "Descripcion"
      ),
      stub_model(Producto,
        :precio => 1,
        :nombre => "Nombre",
        :descripcion => "Descripcion"
      )
    ])
  end

  it "renders a list of productos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
  end
end
