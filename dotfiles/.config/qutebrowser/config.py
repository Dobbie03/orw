bg = '#333333'
fg = '#505050'
sbg = '#2d2d2d'
sfg = '#c2c2c2'
mfg = '#608985'
stbg = '#202020'

font_size = 8
v_padding = 3
h_padding = 20

c.fonts.tabs = f'{font_size}pt Roboto'
c.fonts.hints = f'{font_size + 2}pt Roboto'
c.fonts.statusbar = f'{font_size}pt Roboto'
c.fonts.downloads = f'{font_size}pt Roboto'
c.fonts.contextmenu = f'{font_size}pt Roboto'
c.fonts.completion.entry = f'{font_size + 1}pt Roboto'
c.fonts.completion.category = f'{font_size + 2}pt Roboto'

#c.tabs.max_width = 300
c.tabs.background = True
c.tabs.indicator.width = 0

c.tabs.show = 'multiple'
c.tabs.favicons.show = 'never'
c.tabs.title.format = '{audio} {index}: {current_title}'
c.tabs.padding = { 'top': v_padding, 'bottom': v_padding, 'left': h_padding, 'right': h_padding }

c.scrolling.bar = 'never'

c.downloads.position = 'bottom'
c.downloads.remove_finished = 60000

c.statusbar.hide = True
c.statusbar.position = 'bottom'
c.statusbar.widgets = ['history', 'url', 'scroll', 'progress']
c.statusbar.padding = { 'top': v_padding, 'bottom': v_padding, 'left': v_padding, 'right': h_padding }

c.colors.completion.category.bg = stbg
c.colors.completion.category.border.bottom = stbg
c.colors.completion.category.border.top = stbg
c.colors.completion.category.fg = sfg
c.colors.completion.even.bg = bg
c.colors.completion.fg = fg
c.colors.completion.item.selected.bg = sbg
c.colors.completion.item.selected.border.bottom = sbg
c.colors.completion.item.selected.border.top = sbg
c.colors.completion.item.selected.fg = sfg
c.colors.completion.item.selected.match.fg = mfg
c.colors.completion.match.fg = mfg
c.colors.completion.odd.bg = bg
c.colors.contextmenu.menu.bg = bg
c.colors.contextmenu.menu.fg = fg
c.colors.contextmenu.selected.bg = sbg
c.colors.contextmenu.selected.fg = sfg
c.colors.downloads.bar.bg = stbg
c.colors.downloads.error.bg = 'red'
c.colors.downloads.error.fg = fg
c.colors.downloads.start.bg = bg
c.colors.downloads.start.fg = fg
c.colors.downloads.stop.bg = mfg
c.colors.downloads.stop.fg = sfg
c.colors.downloads.system.bg = 'rgb'
c.colors.downloads.system.fg = 'rgb'
c.colors.hints.bg = stbg
c.colors.hints.fg = sfg
c.colors.hints.match.fg = mfg
c.colors.prompts.bg = stbg
c.colors.prompts.border = '3px solid {stbg}'
c.colors.prompts.fg = fg
c.colors.prompts.selected.bg = sbg
c.colors.statusbar.caret.bg = stbg
c.colors.statusbar.caret.fg = fg
c.colors.statusbar.caret.selection.bg = stbg
c.colors.statusbar.caret.selection.fg = fg
c.colors.statusbar.command.bg = stbg
c.colors.statusbar.command.fg = fg
c.colors.statusbar.command.private.bg = stbg
c.colors.statusbar.command.private.fg = fg
c.colors.statusbar.insert.bg = stbg
c.colors.statusbar.insert.fg = mfg
c.colors.statusbar.normal.bg = stbg
c.colors.statusbar.normal.fg = fg
c.colors.statusbar.passthrough.bg = stbg
c.colors.statusbar.passthrough.fg = fg
c.colors.statusbar.private.bg = stbg
c.colors.statusbar.private.fg = fg
c.colors.statusbar.progress.bg = mfg
c.colors.statusbar.url.error.fg = fg
c.colors.statusbar.url.fg = sfg
c.colors.statusbar.url.hover.fg = 'aqua'
c.colors.statusbar.url.success.http.fg = sfg
c.colors.statusbar.url.success.https.fg = sfg
c.colors.statusbar.url.warn.fg = 'yellow'
c.colors.tabs.bar.bg = bg
c.colors.tabs.even.bg = bg
c.colors.tabs.even.fg = fg
c.colors.tabs.odd.bg = bg
c.colors.tabs.odd.fg = fg
c.colors.tabs.pinned.even.bg = bg
c.colors.tabs.pinned.even.fg = fg
c.colors.tabs.pinned.odd.bg = bg
c.colors.tabs.pinned.odd.fg = fg
c.colors.tabs.pinned.selected.even.bg = sbg
c.colors.tabs.pinned.selected.even.fg = sfg
c.colors.tabs.pinned.selected.odd.bg = sbg
c.colors.tabs.pinned.selected.odd.fg = sfg
c.colors.tabs.selected.even.bg = sbg
c.colors.tabs.selected.even.fg = sfg
c.colors.tabs.selected.odd.bg = sbg
c.colors.tabs.selected.odd.fg = sfg
c.downloads.location.directory = "~/Downloads"
c.downloads.location.prompt = False
c.hints.border = f'2px solid {mfg}'