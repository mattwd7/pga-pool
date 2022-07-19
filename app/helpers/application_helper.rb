module ApplicationHelper
  def component(name, **options, &block)
    render("_components/#{name}", **options, &block)
  end
  alias_method :c, :component
end
