{% import "g.tpl" as g with context %}
<div class="body" palette="{{g.opts.palette}}"
     style="{{meta.background.style || site_meta.bg.style}}">
  <div class="bg-widget">
    <div sup-editor-widget-bg ng-model="meta.background"></div>
  </div>
  {% include '_nav_.tpl' %}
  <section class="wrapper">
    <article class="container paper">
      <figure class="row" ng-if="meta.featured_img.src">
        <img class="img-responsive" alt="{{meta.title}}"
             ng-src="{{meta.featured_img.src}}">
      </figure>
      <header class="upper">
        <h1>
          <span default="{{_('Title')}}" 
                sup-editor-meta ng-model="meta.title"></span>
        </h1>
      </header>
      <div class="date">
        {{meta.date_formatted}}
      </div>
      <hr class="row">
      <!-- content -->
      <div class="content" default="{{_('$_CONTENT')}}"
           sup-angular-wysiwyg ng-model="content">
      </div>
      <!-- #content -->
      <!-- entries -->
      <div class="row">
        <div ng-if="!meta.attachments || meta.attachments.length == 0"
             class="gallery-widget">
          <div sup-editor-widget-gallery ng-model="meta.attachments"></div>
        </div>
        <div ng-if="meta.attachments.length">
          <div sup-editor-widget-gallery ng-model="meta.attachments">
            <figure ng-repeat="pic in meta.attachments"
                    class="col-md-2 col-xs-3">
              <a href="#" class="img-popup">
                <img class="img-responsive" 
                     ng-src="{{pic.src|thumbnail}}" alt="{{pic.title}}"/>
              </a>
            </figure>
          </div>
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
