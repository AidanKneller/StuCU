from django import template

register = template.Library()

@register.filter
def dehyphenate(str):
  return str.replace("-", " ")