module Common

  ##
  #
  # Common code to load a file and process a line at a time
  #
  class EachFileLine

    ##
    #
    # Create an instance and hold onto the filename
    #
    def initialize(filename)
      @filename = filename
    end

    ##
    #
    # Call the block for each line of the file
    #
    def each(&block)
      File.open(@filename).each do |line|
        yield(line.chomp)
      end
    end

  end


end # Common