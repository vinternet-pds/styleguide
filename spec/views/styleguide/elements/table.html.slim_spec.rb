require 'rails_helper'

RSpec.describe "styleguide/elements/table.html.slim", type: :view do

  describe "GET #table" do
    before(:each) do
      # you'll need to specify both the template and the layout explicitly
      render template: 'styleguide/elements/table', layout: 'layouts/sub_layout'
    end
    # Repeat for each partial
    it "rendered partial" do
      expect(response.body).to render_template(partial: "_table")
    end
    it "rendered partial" do
      expect(response.body).to render_template(partial: "_nav_hr")
    end
    it "rendered partial" do
      expect(response.body).to render_template(partial: "_nav_vr_elements")
    end
    it "rendered view includes '#WordorPhrase'" do
      expect(response.body).to include("Table")
    end
  end

end