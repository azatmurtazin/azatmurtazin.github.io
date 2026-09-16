---
layout: default
title: "Статьи по тегам"
permalink: /tags/
---

# Навигация по тегам

<!-- 1. Облако тегов (кнопки-ссылки с якорями) -->
<div class="tag-cloud" style="margin-bottom: 30px;">
  {% assign sorted_tags = site.tags | sort %}
  {% for tag in sorted_tags %}
    {% assign tag_name = tag[0] %}
    {% assign post_count = tag[1] | size %}
    <a href="#{{ tag_name | slugify }}" style="margin-right: 10px; text-decoration: none;">
      #{{ tag_name }} <span>({{ post_count }})</span>
    </a>
  {% endfor %}
</div>

<hr>

<!-- 2. Списки постов, сгруппированные по тегам -->
<div class="tag-lists">
  {% for tag in sorted_tags %}
    {% assign tag_name = tag[0] %}
    {% assign posts = tag[1] %}

    <h2 id="{{ tag_name | slugify }}">{{ tag_name }}</h2>
    <ul>
      {% for post in posts %}
        <li>
          {{ post.date | date: "%Y-%m-%d" }} —
          <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
        </li>
      {% endfor %}
    </ul>
  {% endfor %}
</div>
