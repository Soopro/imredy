{% import "g.tpl" as g with context %}
<div class="cover">
  <div class="wrapper">
    <a href="#" class="entrance {{meta.entrance.class}}"
       sup-editor-widget-button ng-model="meta.entrance">
      <img ng-if="meta.featured_img.src"
           ng-src="{{meta.featured_img.src}}"   
           alt="{{meta.featured_img.title}}" />
      <span ng-if="!meta.featured_img.src">
        {{ meta.entrance.title || site_meta.title }}
      </span>
    </a>
  </div>
  {% include "_cr_.tpl" %}
</div>
