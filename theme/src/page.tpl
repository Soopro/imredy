{% import "g.tpl" as g with context %}
<div style="{{site_meta.bg.style or meta.background.style}}">
  {% include '_nav_.tpl' %}
  <section class="wrapper">
    <article class="container paper">
      <figure class="row" ng-if="meta.featured_img.src">
        <img class="img-responsive banner"
             ng-src="{{meta.featured_img.src}}" alt="{{meta.title}}">
      </figure>
      <header class="upper">
        <h1>
          <span default="{{_('Title')}}" 
                sup-editor-meta ng-model="meta.title"></span>
        </h1>
      </header>
      <hr class="row">
      <!-- content -->
      <div class="content" default="{{_('$_CONTENT')}}"
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
