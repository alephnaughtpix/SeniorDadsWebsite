require "#{File.dirname(__FILE__)}/../code/Demo"
def render_partial(partial, locals = {})
  # assuming we want to keep the rails practice of prefixing file names
  # of partials with "_"
  Haml::Engine.new(File.read("#{File.dirname(__FILE__)}/../partials/_#{partial}.html.haml")).render(Object.new, locals)
end