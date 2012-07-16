require 'guard'
require 'guard/guard'
require 'gemtags'

module Guard

  class SublimeGemtags < Guard

    def initialize(watchers = [], options = {})
      super
    end

    def start
      self.gen_gemtags
    end
    
    def reload
      self.gen_gemtags
    end

    def run_on_changes(paths)
      self.gen_gemtags(paths)
    end
    
    def gemtags_file
      ".gemtags"
    end
    
    def gen_gemtags(paths = [])
      if File.exists?(gemtags_file)
        mtime = paths.map {|path| File.mtime(path) }.max
        return if mtime && mtime <= File.mtime(gemtags_file)
      end
      
      command = "bundle exec gemtags"
      puts "exec #{command}"
      system command
    end
    
  end
end