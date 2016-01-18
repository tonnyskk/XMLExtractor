require 'extractor/version'

module XMLExtractor
  def self.extract(input, output)
    return if input.nil? || output.nil?
    puts '=========================================='
    puts "#{Dir.pwd}"
    `cd .. && export LD_LIBRARY_PATH="XMLExtractor/lib/extractor:$LD_LIBRARY_PATH" && XMLExtractor/lib/extractor/Extractor -i #{input} -o #{output}`
    puts '=========================================='
  end
end
