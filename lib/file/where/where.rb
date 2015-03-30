class File
  module Where
    
    def self.are(cmd, env = ENV['PATH'])
      env.split(':').select do |dir|
        File.exist?(dir << '/' << cmd)
      end
    end
    
  end
end
