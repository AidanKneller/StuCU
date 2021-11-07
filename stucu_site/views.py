from django.shortcuts import render
from .models import *

# Create your views here.

categories = [
  "academics", 
  "on-campus-housing",
  "off-campus-housing", 
  "registered-student-organizations", 
  "restaurants",
  "school-social-media"
]

def landing_page(request):
  return render(request, "stucu_site/landing_page.html", {
    "categories": categories
    })

def academics(request):
  entries = Academics.objects.all().order_by('website_name')
  return render(request, "stucu_site/resources/academics_page.html", {
    "entries": entries
  })

def academics_detail(request, id):
  resource = Academics.objects.get(pk = id)
  return render(request, "stucu_site/resources/academics_detail.html", {
    "resource": resource
  })

def on_campus_housing(request):
  entries = OnCampusHousing.objects.all().order_by('dorm_unit_name')
  return render(request, "stucu_site/resources/on_campus_housing_page.html", {
    "entries": entries
  })

def on_campus_housing_detail(request, id):
  resource = OnCampusHousing.objects.get(on_campus_housing_id = id)
  return render(request, "stucu_site/resources/on_campus_housing_detail.html", {
    "resource": resource
  })

def off_campus_housing(request):
  return render(request, "stucu_site/resources/off_campus_housing_page.html", {
    #this is where we will query the data from this table and send it in?
  })

def registered_student_organizations(request):
  return render(request, "stucu_site/resources/registered_student_organizations_page.html", {
    #this is where we will query the data from this table and send it in?
  })

def restaurants(request):
  entries = Restaurants.objects.all().order_by('restaurant_name')
  return render(request, "stucu_site/resources/restaurants_page.html", {
    "entries": entries
  })

def restaurant_detail(request, id):
  resource = Restaurants.objects.get(restaurant_id = id)
  return render(request, "stucu_site/resources/restaurant_detail.html", {
    "resource": resource
  })

def school_social_media(request):
  entries = SchoolSocialMedia.objects.all().order_by('organization_name')
  return render(request, "stucu_site/resources/school_social_media_page.html", {
    "entries": entries
  })

def ssm_detail(request, id):
  resource = SchoolSocialMedia.objects.get(pk = id)
  socials = [
    resource.facebook_link, resource.instagram_link,
    resource.linkedin_link, resource.twitter_link,
    resource.snapchat_link, resource.youtube_link,
    resource.pinterest_link, resource.weibo_link
  ]
  return render(request, "stucu_site/resources/school_social_media_detail.html", {
    "resource": resource,
    "socials": socials
  })