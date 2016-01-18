require 'extractor/version'

module XMLExtractor
  def self.extract(input, output)
  	puts '====================================================='
    # Return if source and target file is not existed.
    return if input.nil? || output.nil?

  	puts 'Check file'
    # Check file
    return unless File.exist?(input)
    return if File.exist?(output)

    file_dir = File.dirname(__FILE__)
  	puts "file_dir = #{file_dir}"
    `export LD_LIBRARY_PATH="#{file_dir}/extractor:$LD_LIBRARY_PATH" && #{file_dir}/extractor/Extractor -i #{input} -o #{output}`
  	puts '====================================================='
  end
end
