class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

# accepts a Project as an argument and stores it in a backed_projects array
  def back_project(project)
    #telling that Backer instance about on of it's backed projects
    @backed_projects << project
    #adds the backer to the project's backers array.
    project.backers << self
#project is an instance of the Project class and calling the backers method on that instance that give you access to the backers array (backers attribute).
#self is an instance of the Backer class, we are storing the backer associated with the project
  end
end

#class Backer

#  attr_accessor :name, :backed_projects

#  def initialize(name)
#    @name = name
#    @backed_projects = []
#  end

#  def back_project(project)
#    @backed_projects << project
#    project.backers << self
#  end
#end
