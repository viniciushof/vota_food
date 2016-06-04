require 'rails_helper'

RSpec.describe "comentarios/show", type: :view do
  before(:each) do
    @comentario = assign(:comentario, Comentario.create!(
      :conteudo => "MyText",
      :comentavel_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
