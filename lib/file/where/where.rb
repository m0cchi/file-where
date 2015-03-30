class File
  module Where
    
    def self.are(cmd, env = ENV['PATH'])
      env.split(':').select do |dir|
        File.exist?(dir << '/' << cmd)
      end
    end

    def self.is(cmd, env = ENV['PATH'])
      are(cmd,env).shift
    end
    
  end
end
