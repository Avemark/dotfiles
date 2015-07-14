status --is-interactive; and . (rbenv init -|psub)

alias rspec='noglob rspec '

if command -v bundle > /dev/null
  alias rbb='bundle'
  alias rbbe='bundle exec'
  alias rbbi='bundle install --path vendor/bundle'
  alias rbbl='bundle list'
  alias rbbo='bundle open'
  alias rbbp='bundle package'
  alias rbbu='bundle update'
  alias rbbI='rbbi \
    ; bundle package \
    ; print .bundle       >>! .gitignore \
    ; print vendor/assets >>! .gitignore \
    ; print vendor/bundle >>! .gitignore \
    ; print vendor/cache  >>! .gitignore'
end

