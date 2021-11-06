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

def on_campus_housing(request):
  entries = OnCampusHousing.objects.all().order_by('dorm_unit_name')
  return render(request, "stucu_site/resources/on_campus_housing_page.html", {
    "entries": entries
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

def school_social_media(request):
  entries = SchoolSocialMedia.objects.all().order_by('organization_name')
  return render(request, "stucu_site/resources/school_social_media_page.html", {
    "entries": entries
  })