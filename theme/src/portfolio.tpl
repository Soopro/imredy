{% import "g.tpl" %}
{% include '_css_.tpl' %}

<div class="body {{meta.bg.class}}" palette="{{g.opts.palette}}"
     style="{{meta.bg.style || site_meta.bg.style}}">
  <div class="bg-widget">
    <div sup-widget-bg ng-model="meta.bg"></div>
  </div>

  {% include '_nav_.tpl' %}
  <section class="wrapper">
    <div class="container entries">
      <header>
        <h1>
          <span default="{{_('Works')}}"
                sup-widget-text ng-model="meta.title"></span>
        </h1>
      </header>
      <!-- entries -->
      <div class="row"
           sup-widget-series
           ng-model="meta.series">
        <figure series-item
                ng-repeat="works in meta.series"
                class="col-lg-3 col-md-4 col-sm-6">
          <a href="#"
             class="img-popup {{works.class}}">
            <img class="img-responsive img-holder"
                 alt="{{works.title}}"
                 ng-src="{{g.img_holder}}"
                 style="{{works.src|bg_img}}" />
          </a>
        </figure>
        <figure class="col-lg-3 col-md-4 col-sm-6"
                series-item-create>
          <a href="#" class="img-popup">
            <img class="img-responsive"
                 ng-src="{{g.default_img}}"
                 alt="..." />
          </a>
        </figure>

      </div>
      <!-- #entries -->
      <hr class="row">
    </div>
    {% include '_cr_.tpl' %}
  </section>
  {% include '_sider_.tpl' %}
</div>
