require 'guard'
require 'guard/guard'

module Guard

  class SublimeCtags < Guard

    def initialize(watchers = [], options = {})
      super
    end

    def start
      self.gen_ctags
    end
    
    def reload
      self.gen_ctags
    end

    def run_on_changes(paths)
      self.gen_ctags(paths)
    end
    
    def run_on_removals(paths)
      self.gen_ctags
    end
    
    def ctags_file
      ".tags"
    end
    
    def gen_ctags(files = [])
      if files.empty?
        command = "ctags -R -f #{ctags_file}"
        puts "exec #{command}"
        system command
      else
        command = "ctags -f #{ctags_file} --append=yes " + files.map{|f| "'#{f}'" }.join(" ")
        puts "exec #{command}"
        system command
      end
    end
    
  end
end