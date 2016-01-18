require 'extractor/version'

module XMLExtractor
  def self.extract(input, output)
    # Return if source and target file is not existed.
    return if input.nil? || output.nil?

    # Check file
    return unless File.exist?(input)
    return if File.exist?(output)

    file_dir = File.dirname(__FILE__)
    `export LD_LIBRARY_PATH="#{file_dir}/extractor:$LD_LIBRARY_PATH" && #{file_dir}/extractor/Extractor -i #{input} -o #{output} >/dev/null 2>&1`

  end
end
