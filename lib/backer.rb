class Backer

    attr_reader :name
    attr_reader :backed_projects
    
    def initialize(name)
      @name = name
      @backed_projects = []
    end   

    def back_project(proj)
        self.backed_projects << proj unless self.backed_projects.include?(proj)
        proj.add_backer(self) unless proj.backers.include?(self)
    end
  end