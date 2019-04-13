# require libraries/modules here
require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokigiri::HTML(html)
  project = {}
  kickstarter.css("li.project.grid_4").first
end