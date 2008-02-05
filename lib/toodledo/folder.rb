module Toodledo
  
  #
  # A read only representation of a Folder.
  #
  class Folder
    
    def initialize(id, is_private, archived, name)
      @id = id
      @is_private = is_private
      @archived = archived
      @name = name
    end
    
    NO_FOLDER = Folder.new(0, 1, 0, "No folder")
    
    attr_reader :is_private, :archived, :name
    
    def server_id
      return @id
    end
    
    def is_private?
      return @is_private == 1
    end
    
    def archived?
      return @archived == 1
    end
        
    def to_s()
      return "*[#{name}]"
    end
    
    def to_xml()
      return "<folder id=\"#{@id}\" private=\"#{@is_private}\" archived=\"#{@archived}\">#{@name}</folder>"
    end
  end
  
  
end