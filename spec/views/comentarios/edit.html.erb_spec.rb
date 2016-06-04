require 'rails_helper'

RSpec.describe "comentarios/edit", type: :view do
  before(:each) do
    @comentario = assign(:comentario, Comentario.create!(
      :conteudo => "MyText",
      :comentavel_id => 1
    ))
  end

  it "renders the edit comentario form" do
    render

    assert_select "form[action=?][method=?]", comentario_path(@comentario), "post" do

      assert_select "textarea#comentario_conteudo[name=?]", "comentario[conteudo]"

      assert_select "input#comentario_comentavel_id[name=?]", "comentario[comentavel_id]"
    end
  end
end
