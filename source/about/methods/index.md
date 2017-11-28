---
title: What are our methods?
---

{% for method in site.data.patterns %}
## {{method.name | capitalize}}
{% for expectation in method.expectations %}
{{expectation}}
{% endfor %}
{% endfor %}
