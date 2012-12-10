# Liquid-Sort
#
# A custom tag for the Liquid templating engine (and therefore Jekyll) that allows you to sort an array by a key.
#
# Usage
#
# If you're using Jekyll you can simply clone this repository into your _plugins folder to begin using it, otherwise place it somewhere where it will be read by your application.
#
# To use it, place it somewhere where it can access the array you'd like to sort. For example, using the Liquid-GitHub extension:
#
#{% github user: ZaneA %}
#  {% sort var: repos by: pushed_at direction: up %}
#  {% for repo in repos %}
#     <h3>{{ repo.name }}</h3>
#     {{ repo.description | markdownify }}
#  {% endfor %}
#{% endgithub %}
#
#
# I also use it along with the Jekyll-Models extension:
#
# {% sort var: site.projects by: mdl_name %}
#
class SortTag < Liquid::Tag

  def initialize(tag_name, text, tokens)
    super

    @attributes = {}

    text.scan(Liquid::TagAttributes) do |key, value|
      @attributes[key] = value
    end

    @var = @attributes['var']
    @key = @attributes['by']
    @direction = @attributes['direction']
  end

  def render(context)
    context[@var].sort! { |a, b| a[@key] <=> b[@key] }

    if @direction == 'up'
      context[@var].reverse!
    end

    nil
  end

end

Liquid::Template.register_tag('sort', SortTag)
