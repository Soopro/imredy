{% import "g.tpl" as g with context %}
<!DOCTYPE html>
<html lang="{{lang}}">
<head>
{% include '_head_.html' %}
</head>

<body class="cover">
  <div class="wrapper">
    <a href="{{meta.entrance.link|url}}"
       class="entrance {{meta.entrance.class}}">
      {% if meta.featured_img.src %}
      <img src="{{meta.featured_img.src}}" 
           alt="{{meta.featured_img.title}}" />
      {% else %}
      {{meta.entrance.title}}
      {% endif %}
    </a>
  </div>
  <div class="cr">
    <p>
      <span>{{site_meta.copyright}}</span>
      <span>{{site_meta.license}}</span>
    </p>
  </div>
</body>
</html>
