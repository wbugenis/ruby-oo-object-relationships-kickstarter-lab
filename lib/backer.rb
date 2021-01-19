class Backer
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select{|projectbacker| projectbacker.backer == self}.map{|projectbacker| projectbacker.project}
    end

end