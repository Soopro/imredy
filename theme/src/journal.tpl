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
          <span default="{{_('Journal')}}"
                sup-editor-meta ng-model="meta.title"></span>
        </h1>
      </header>
      <span sup-query="post" ng-model="query.posts"></span>
      <!-- entry -->
      <div class="row entry" ng-repeat="post in query.posts"
           sup-editor-open file="post">
        <figure class="col-lg-2 col-md-3 col-sm-4">
          <a href="#">
            <img class="img-responsive" alt="{{post.title}}" 
                 ng-src="{{post.featured_img.src|thumbnail}}" />
          </a>
        </figure>
        <div class="col-lg-10 col-md-9 col-sm-8">
          <h3>
            <a href="#">{{post.title|striptags}}</a>
          </h3>
          <p>{{post.excerpt}}</p>
          <div class="ln more">
            <a href="#">{{_('Read more')}}</a>
          </div>
        </div>
      </div>
      <!-- #entry -->
      <!-- paginator -->
      <div class="paginator clearfix">
        <div class="text-left">
          <div class="ln next">
            <a href="#">
              {{_('Forward')}}
            </a>
          </div>
        </div>
        <div class="text-right">
          <div class="ln prev">
            <a href="#">
              {{_('Previous')}}
            </a>
          </div>
        </div>
      </div>
      <!-- #paginator -->
      <hr class="row">
    </div>
    {% include '_cr_.tpl' %}
  </section>
  {% include '_sider_.tpl' %}
</div>