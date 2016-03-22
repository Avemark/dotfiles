if command -v bundle > /dev/null
  abbr rbb='bundle'
  abbr rbbe='bundle exec'
  abbr rbbi='bundle install --path vendor/bundle'
  abbr rbbl='bundle list'
  abbr rbbo='bundle open'
  abbr rbbp='bundle package'
  abbr rbbu='bundle update'
  abbr rbbI='rbbi \
    ; bundle package \
    ; print .bundle       >>! .gitignore \
    ; print vendor/assets >>! .gitignore \
    ; print vendor/bundle >>! .gitignore \
    ; print vendor/cache  >>! .gitignore'
end

