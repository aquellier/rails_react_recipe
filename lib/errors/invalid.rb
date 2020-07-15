module Errors
  class Invalid < StandardError
    attr_reader :status, :title, :detail, :source

    def initialize(status=nil, title=nil, detail=nil, source=nil)
      @status = status || 422
      @title = title || :unprocessable_entity
      @detail = detail || "Something went wrong"
      @source = source || ("Source not found")
    end
  end
end
