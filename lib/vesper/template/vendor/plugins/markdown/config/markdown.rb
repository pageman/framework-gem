# More info: https://github.com/tanoku/redcarpet

REDCARPET = Redcarpet::Markdown.new(
  Redcarpet::Render::HTML,
  autolink: true
)