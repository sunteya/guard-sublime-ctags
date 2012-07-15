require 'guard'
require 'guard/guard'
require 'gemtags'

module Guard

  class SublimeGemtags < Guard

    def initialize(watchers = [], options = {})
      super
    end

    def start
      self.gemtags
    end
    
    def reload
      self.gemtags
    end

    def run_on_changes(paths)
      self.gemtags(paths)
    end
    
    def gemtags_path
      ".gemtags"
    end
    
    def gemtags(paths = [])
      if File.exists?(gemtags_path)
        mtime = paths.map {|path| File.mtime(path) }.max
        return if mtime && mtime <= File.mtime(gemtags_path)
      end
      
      system "bundle exec gemtags"
    end
    
  end
end