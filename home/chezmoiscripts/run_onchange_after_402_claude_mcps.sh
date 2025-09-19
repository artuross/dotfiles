#!/bin/bash

# Installs Claude Code MCP servers. In v1.0.119, the global config is stored in
# ~/.claude.json and thus cannot be managed declaratively.

~/.local/bin/claude mcp add context7 context7-mcp || true
~/.local/bin/claude mcp add tree_sitter mcp-server-tree-sitter || true
