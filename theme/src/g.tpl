<sup-set ng-model="g.default_logo"
         value="{{theme_url+'/styles/logo.png'}}"></sup-set>
<sup-set ng-model="g.default_thumbnail"
         value="{{theme_url+'/styles/default_thumbnail.png'}}"></sup-set>
<sup-set ng-model="g.default_poster"
         value="{{theme_url+'/styles/default_poster.png'}}"></sup-set>
<sup-set ng-model="g.default_banner"
         value="{{theme_url+'/styles/default_banner.png'}}"></sup-set>

<!-- Options -->
<sup-set ng-model="g.opts" object="theme_meta.options"></sup-set>
<sup-set ng-model="g.perpage"
         value="{{theme_meta.options.perpage || 6}}"></sup-set>

<sup-set ng-model="g.ver" value="{{theme_meta.version}}"></sup-set>

<!-- Styles -->
<link ng-href="{{theme_url}}/libs/bootstrap.min.css?{{g.ver}}"
      rel="stylesheet">
<link ng-href="{{theme_url}}/libs/magnific-popup.css?{{g.ver}}"
      rel="stylesheet">
<link ng-href="{{theme_url}}/styles/fonts/fonts.css?{{g.ver}}"
      rel="stylesheet">
<link ng-href="{{theme_url}}/styles/style.css?{{g.ver}}"
      rel="stylesheet">

<!-- Custom styles -->
<style ng-bind="theme_meta.styles"></style>