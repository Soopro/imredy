{% import "g.tpl" as g with context %}
<div class="body" style="{{meta.background.style || site_meta.bg.style}}">
  <div class="bg-widget">
    <div sup-editor-widget-bg ng-model="meta.background"></div>
  </div>

  {% include '_nav_.tpl' %}
  <section class="wrapper">
    <div class="container entries">
      <header>
        <h1>
          <span default="{{_('Works')}}" 
                sup-editor-meta ng-model="meta.title"></span>
        </h1>
      </header>
      <!-- entries -->
      <div class="row" sup-editor-widget-gallery ng-model="meta.attachments">
        <figure ng-repeat="works in meta.attachments"
                class="col-lg-3 col-md-4 col-sm-6">
          <a href="#" class="img-popup {{works.class}}">
            <img class="img-responsive" 
                 ng-src="{{works.src}}" alt="{{works.title}}" />
          </a>
        </figure>
        <figure ng-if="!meta.attachments || meta.attachments.length == 0"
          class="col-lg-3 col-md-4 col-sm-6">
          <a href="#" class="img-popup">
            <img class="img-responsive" 
                 ng-src="{{g.default_thumbnail}}" alt="..." />
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
