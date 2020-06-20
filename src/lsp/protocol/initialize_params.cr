module LSP::Protocol
  struct InitializeParams
    include JSON::Serializable

    @[JSON::Field(key: "processId")]
    property process_id : Int64 | Int32 | Nil

    @[JSON::Field(key: "rootUri")]
    property root_uri : String?

    @[JSON::Field(key: "rootPath")]
    property root_path : String?
    property capabilities : JSON::Any
    property trace : String?
  end
end
