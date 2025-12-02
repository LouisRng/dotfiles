# Repository Guidelines

These notes keep the personal config repo consistent and easy to maintain. Favor small, well-scoped changes and verify them in the tools they affect.

## Project Structure & Module Organization
- `nvim/`: AstroNvim v5 user config; entry in `init.lua`, plugin specs in `lua/plugins/*.lua`, polish in `lua/polish.lua`, pins in `lazy-lock.json`, lint rules in `selene.toml`.
- `fish/`, `tmux/`, `kitty/`, `yazi/`: shell, multiplexer, terminal, and file manager settings; tmux is split into themed/key/core files, kitty has a primary `kitty.conf`.
- `starship.toml`, `neofetch/config.conf`, `github-copilot/versions.json`: misc CLI tooling.
- `clash.meta/`: network/proxy configs—treat contents as sensitive and avoid committing secrets.

## Build, Test, and Development Commands
- No build pipeline; validate configs in place.
- `nvim --headless "+Lazy sync" +qa`: sync plugins and catch Lua errors early (updates `lazy-lock.json` when versions change).
- `nvim --headless "+checkhealth" +qa`: confirm runtime dependencies after Neovim edits.
- `tmux source-file ~/.config/tmux/tmux.conf`: reload tmux without restarting sessions.
- `kitty --config ~/.config/kitty/kitty.conf` (start or reload) and `fish -c "source ~/.config/fish/config.fish"` to sanity-check terminal/shell changes.

## Coding Style & Naming Conventions
- Lua: two-space indent, return spec tables from plugin files, prefer snake_case locals, and keep related plugins grouped per file. Update `lazy-lock.json` only via Lazy.
- TOML/conf: mirror existing key ordering and comment style; avoid inline tabs.
- Name files by scope (e.g., `nvim/lua/plugins/treesitter.lua` covers parser config).

## Testing Guidelines
- Run the headless Neovim checks above after Lua changes; launch Neovim interactively at least once to confirm UI behavior.
- For tmux/kitty/fish, reload and exercise common workflows (pane splits, copy mode, prompt rendering).
- Document any remaining manual checks in your PR/commit description.

## Commit & Pull Request Guidelines
- Use short, imperative commit messages that note the area, e.g., `nvim: tune LSP diagnostics` or `tmux: add session rename binding`.
- In PRs, include a brief summary of scope, any dependency bumps (plugins, themes), and validation steps run. Add screenshots or terminal captures if changing visuals (kitty colors, tmux theme, Neovim UI).
- Avoid committing personal tokens or host-specific addresses—scrub `clash.meta` and similar files before pushing.
