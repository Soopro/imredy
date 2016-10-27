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
    <div class="container entries"
         sup-query="post"
         ng-model="query.posts">
      <header>
        <h1>
          <span sup-widget-text
                default="{{_('Journal')}}"
                ng-model="meta.title"></span>
        </h1>
      </header>
      <div class="row entry"
           sup-widget-create
           type="post">
        <figure class="col-lg-2 col-md-3 col-sm-4">
          <a href="#">
            <img class="img-responsive"
                 ng-src="{{g.default_img}}" />
          </a>
        </figure>
        <div class="col-lg-10 col-md-9 col-sm-8">
          <h3>
            <a href="#">{{_('Create new post')}}</a>
          </h3>
        </div>
      </div>
      <!-- entry -->
      <div class="row entry"
           ng-repeat="post in query.posts.contents"
           sup-widget-open
           file="post">
        <figure class="col-lg-2 col-md-3 col-sm-4">
          <a href="#">
            <img class="img-responsive img-holder"
                 alt="{{post.title}}"
                 ng-if="post.featured_img.src"
                 ng-src="{{g.img_holder}}"
                 style="{{post.featured_img.src|bg_img}}" />
            <img class="img-responsive"
                 alt="{{post.title}}"
                 ng-if="!post.featured_img.src"
                 ng-src="{{g.cloud_img}}" />
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