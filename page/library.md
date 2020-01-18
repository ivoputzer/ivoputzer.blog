---
template: page
---

# Library.

{% for book in books %}
1.  {{ book.title }}: {{ book.subtitle }} - {% for author in book.author %} {{ author }}{{ ',' if not loop.last }} {% endfor %}
{% endfor %}
