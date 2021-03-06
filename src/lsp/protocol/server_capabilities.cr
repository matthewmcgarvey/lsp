module LSP::Protocol
  enum TextDocumentSyncKind
    None
    Full
    Incremental
  end

  struct CompletionOptions
    JSON.mapping(
      resolveProvider: Bool,
      triggerCharacters: Array(String)
    )

    def initialize
      @resolveProvider = true
      @triggerCharacters = [".", "\"", "/"]
    end
  end

  # Specify supported server capabilities:
  #
  # - Go to Implementation (WIP)
  # - Diagnostics (WIP)
  # - Formatting (WIP)
  # - Symbols (WIP)
  # - Completion (WIP)
  # - Hover (WIP)
  # - Code Actions (WIP)
  #
  # Features not supported by Crystal yet:
  #
  # - Rename
  # - Find References
  struct ServerCapabilities
    JSON.mapping(
      textDocumentSync: TextDocumentSyncKind,
      documentFormattingProvider: Bool,
      definitionProvider: Bool,
      documentSymbolProvider: Bool,
      workspaceSymbolProvider: Bool,
      completionProvider: CompletionOptions,
      hoverProvider: Bool,
    )

    def initialize(@textDocumentSync, @documentFormattingProvider, @definitionProvider,
                   @documentSymbolProvider, @workspaceSymbolProvider, @completionProvider, @hoverProvider)
    end
  end
end
