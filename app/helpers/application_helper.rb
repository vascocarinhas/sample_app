module ApplicationHelper
# Returns the full title on a per-page basis.
def full title(page title)
base title = "JangIn"
if page title.empty?
base title
else
"#{base title} | #{page title}"
end
end
end
