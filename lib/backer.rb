class Backer
  attr_accessor :name, :backed_projects 
  def initialize(name)
    self.name = name
    self.backed_projects = []
  end 
  
  def back_project(project)
    self.backed_projects << project
    project.backers << self
  end 
end 