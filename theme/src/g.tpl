{% set default_logo = theme_url+'/styles/logo.png' %}
{% set default_favicon = theme_url+'/styles/favicon.png' %}
{% set default_entrance = theme_url+'/styles/logo_entrance.png' %}


{% set opts = theme_meta.options %}
<!-- paged -->
{% set paged = args.paged|int if args.paged and args.paged|int > 0 else 1 %}
<!-- perpage -->
{% set perpage = opts.perpage|int if opts.perpage else 12 %}

{% set robots = 'index, follow' if not meta.is_404 else 'noindex, nofollow' %}

<!-- custom styles -->
{% set custom_styles = '<style>'+theme_meta.styles+'</style>' 
   if theme_meta.styles else '' %}