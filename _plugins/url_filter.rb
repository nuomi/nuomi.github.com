module Jekyll
    module UrlFilter
        def url_filter(pagelist, url_pattern, order, sort_by)
            puts pagelist
            puts url_pattern
            puts order
            puts sort_by
        end

    end #UrlFilter
end #Jekyll

Liquid::Template.register_filter(Jekyll::UrlFilter)
