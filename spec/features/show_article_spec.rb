require 'rails_helper'

RSpec.feature "Showing an article" do

	before do
		@article = Article.create(title: "The article was created", body: "blablabla")
	end

	scenario "A users shows an article" do
		visit "/"

		click_link @article.title

		expect(page).to have_content(@article.title)
		expect(page).to have_content(@article.body)
		expect(current_path).to eq(article_path(@article))
	end

end