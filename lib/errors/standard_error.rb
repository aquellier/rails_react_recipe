module Errors
  class StandardError < ::StandardError
    attr_reader :title, :detail, :status, :source

    def initialize(title=nil, detail=nil, status=nil, source={})
      @title = title || "Something went wrong"
      @detail = detail || "We encountered unexpected error, but our developers had been already notified about it"
      @status = status || 500
      @source = source.deep_stringify_keys
    end

    def to_h
      {
        status: status,
        title: title,
        detail: detail,
        source: source
      }
    end

    def to_s
      to_h.to_s
    end

    def to_json
      to_h.to_json
    end

  end
end
