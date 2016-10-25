{% import "g.tpl" %}
{% include '_css_.tpl' %}

<div class="body {{meta.bg.class}}"
     palette="{{g.opts.palette}}"
     style="{{meta.bg.style || site_meta.bg.style}}">
  <div class="bg-widget">
    <div sup-widget-bg
         ng-model="meta.bg"></div>
  </div>
  {% include '_nav_.tpl' %}
  <section class="wrapper">
    <article class="container paper">
      <figure class="row"
              ng-if="meta.featured_img.src"
              sup-widget-media
              ng-model="meta.featured_img">
        <img class="img-responsive" alt="{{meta.title}}"
             ng-src="{{meta.featured_img.src}}">
      </figure>
      <header class="upper">
        <h1>
          <span default="{{_('Title')}}"
                sup-widget-text
                ng-model="meta.title"></span>
        </h1>
      </header>
      <div class="date">
        {{meta.date|date_formatted}}
      </div>
      <hr class="row">
      <!-- content -->
      <div class="content"
           default="{{_('$_CONTENT')}}"
           sup-angular-wysiwyg
           ng-model="content">
      </div>
      <!-- #content -->
      <!-- entries -->
      <div class="attachments"
           sup-widget-series
           default="{{[
             {
               'title': _('Attachment'),
               'src': theme_url+'/styles/default_img.png'
             }
           ]}}"
           ng-model="meta.attachments">
        <div class="row">
          <figure ng-repeat="pic in meta.attachments"
                  ng-if="pic.type == 'image'"
                  class="col-md-2 col-xs-3"
                  series-item>
            <a href="#"
               class="img-popup">
              <img class="img-responsive img-holder"
                   alt="{{pic.title}}"
                   ng-src="{{g.img_holder}}"
                   style="{{pic.src|bg_img}}"/>
            </a>
          </figure>
          <figure class="col-md-2 col-xs-3"
                  series-item-create>
            <a href="#"
               class="img-popup">
              <img class="img-responsive"
                   ng-src="{{g.default_img}}"/>
            </a>
          </figure>
        </div>
      </div>

      <!-- #entries -->
      <!-- paginator -->
      <div class="paginator clearfix">
        <div class="text-left">
          <div class="ln next">
            <a href="#">{{_('Forward')}}</a>
          </div>
        </div>
        <div class="text-right">
          <div class="ln prev">
            <a href="#">{{_('Previous')}}</a>
          </div>
        </div>
      </div>
      <!-- #paginator -->
      <hr class="row">
    </article>
    {% include '_cr_.tpl' %}
  </section>
  {% include '_sider_.tpl' %}
</div>
