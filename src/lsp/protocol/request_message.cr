module LSP::Protocol
  struct RequestMessage
    alias RequestType = (TextDocumentPositionParams |
                         InitializeParams |
                         DocumentFormattingParams |
                         TextDocumentParams |
                         WorkspaceSymbolParams |
                         CompletionItem)?

    JSON.mapping({
      jsonrpc: String,
      id:      Int32,
      method:  String,
      params:  RequestType,
    })

    def hover?
      method == "textDocument/hover"
    end

    def definition?
      method == "textDocument/definition"
    end

    def completion?
      method == "textDocument/completion"
    end
  end
end
