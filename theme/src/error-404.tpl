{% import "g.tpl" %}
{% include '_css_.tpl' %}

<div palette="{{g.opts.palette}}" class="body {{meta.background.class}}"
     style="{{meta.background.style || site_meta.bg.style}}">
  <div class="bg-widget">
    <div sup-widget-bg ng-model="meta.background"></div>
  </div>

  {% include '_nav_.tpl' %}
  <section class="wrapper">
    <article class="container paper">
      <figure class="row" ng-if="meta.featured_img.src">
        <img class="img-responsive banner"
             ng-src="{{meta.featured_img.src}}" alt="{{meta.title}}">
      </figure>
      <header class="upper">
        <h1>
          <span default="{{_('Error 404')}}"
                sup-widget-text ng-model="meta.title"></span>
        </h1>
      </header>
      <hr class="row">
      <!-- content -->
      <div class="content" default="{{_('$_ERROR404')}}"
           sup-angular-wysiwyg ng-model="content">
      </div>
      <!-- #content -->
      <hr class="row">
    </article>
    {% include '_cr_.tpl' %}
  </section>
  {% include '_sider_.tpl' %}
</body>
</html>
