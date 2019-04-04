# Force WebP images for Jekyll

[![Gem Version](https://badge.fury.io/rb/jekyll-forcewebp.svg)](https://badge.fury.io/rb/jekyll-forcewebp)

Very simple gem that will add `<picture/>` with your image and webp image url, example result:

```html
<picture>
  <source type="image/webp" srcset="/assets/img/affixes/10.webp" />
  <source type="image/jpeg" srcset="/assets/img/affixes/10.jpg" />
  <img src="/assets/img/affixes/10.jpg" class="rounded-circle" />
</picture>
```

## Usage

In layout add `forcewebp` filter, example: `{{ content | forcewebp }}`
