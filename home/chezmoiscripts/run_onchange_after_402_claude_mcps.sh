#!/bin/bash

# Installs Claude Code MCP servers. In v1.0.119, the global config is stored in
# ~/.claude.json and thus cannot be managed declaratively.

claudePath=$(/opt/homebrew/bin/mise where npm:@anthropic-ai/claude-code)/bin/claude

$claudePath mcp add context7 context7-mcp || true
$claudePath mcp add tree_sitter mcp-server-tree-sitter || true
