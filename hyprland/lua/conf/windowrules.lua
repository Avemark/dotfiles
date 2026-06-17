-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
--
-- Every rule in the legacy windowrules.conf was commented out, so nothing is
-- active here either. Below are commented Lua equivalents to re-enable when
-- needed. Note: the new schema uses a `match` table + named effects rather
-- than the old positional `windowrule = effect, class:...` syntax.

-- 1Password focus/tag handling
-- hl.window_rule({ name = "1password-focus", match = { class = "1Password", title = "1Password" }, tag = "+1PasswordFocus" })
-- hl.window_rule({ name = "1password-free",  match = { class = "1Password", title = ".+\\-.+\\- 1Password" }, tag = "+1PasswordFree" })
-- hl.window_rule({ name = "1password-stayfocused", match = { tag = "1PasswordFocus" }, stay_focused = true })
-- hl.window_rule({ name = "1password-center", match = { class = "1Password", title = "1Password" }, center = true })
-- hl.window_rule({ name = "1password-pin",    match = { class = "1Password", title = "1Password" }, pin = true })

-- Floating utilities
-- hl.window_rule({ name = "float-swayimg", match = { class = "swayimg" }, float = true })
-- hl.window_rule({ name = "float-iwgtk",   match = { class = "org.twosheds.iwgtk" }, float = true })
-- hl.window_rule({ name = "float-bluejay", match = { class = "io.github.ebonjaeger.bluejay" }, float = true })
