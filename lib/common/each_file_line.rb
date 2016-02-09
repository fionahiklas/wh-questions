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
     File.open(@filename).each &block
    end

  end


end # Common