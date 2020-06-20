module LSP::Protocol
  struct Initialize
    include JSON::Serializable

    property jsonrpc : String = "2.0"
    property id : Int32
    property result : InitializeResult

    def initialize(msg_id, server_capabilities)
      @id = msg_id
      @result = InitializeResult.new(server_capabilities)
    end
  end
end
