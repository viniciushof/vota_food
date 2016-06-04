require 'rails_helper'

RSpec.describe "comentarios/new", type: :view do
  before(:each) do
    assign(:comentario, Comentario.new(
      :conteudo => "MyText",
      :comentavel_id => 1
    ))
  end

  it "renders new comentario form" do
    render

    assert_select "form[action=?][method=?]", comentarios_path, "post" do

      assert_select "textarea#comentario_conteudo[name=?]", "comentario[conteudo]"

      assert_select "input#comentario_comentavel_id[name=?]", "comentario[comentavel_id]"
    end
  end
end
