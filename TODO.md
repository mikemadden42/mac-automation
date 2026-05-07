# TODO

## mac-apple-brews.yml

- Remove `ag` — superseded by `ripgrep` (already installed)
- Consider removing `ranger` — largely superseded by modern alternatives
- Consider removing `yarn` — `npm` is bundled with `node`; only keep if actively used
- Trim system monitors — `bottom`, `btop`, `htop`, `gotop` are redundant; pick one or two
- Trim disk usage tools — `ncdu`, `dust`, `dysk` overlap; consider consolidating
- Reconsider `pillow` — Python imaging library better managed in a venv via `uv`/`poetry`
- Consider adding `shfmt` — complements `shellcheck` for shell script formatting

## mac-apple-casks.yml

- Trim terminal emulators — `ghostty`, `iterm2`, `kitty`, `wezterm` are redundant; pick one or two
- Consider removing `whatsapp` — redundant if using the web version
- Consider removing `handbrake` — niche tool; only keep if actively used
- Consider adding `firefox` — useful for browser testing/isolation (present in Intel list but not here)
