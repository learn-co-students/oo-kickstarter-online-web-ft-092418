class Project
  attr_accessor :title, :backers
  
  def initialize(title)
    self.title = title
    self.backers = []
  end
  
  def add_backer(backer)
    backer.backed_projects << self
    self.backers << backer
  end
  
end