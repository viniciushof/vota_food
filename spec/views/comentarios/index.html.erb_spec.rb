require 'rails_helper'

RSpec.describe "comentarios/index", type: :view do
  before(:each) do
    assign(:comentarios, [
      Comentario.create!(
        :conteudo => "MyText",
        :comentavel_id => 1
      ),
      Comentario.create!(
        :conteudo => "MyText",
        :comentavel_id => 1
      )
    ])
  end

  it "renders a list of comentarios" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
