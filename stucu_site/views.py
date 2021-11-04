from django.shortcuts import render

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
  return render(request, "stucu_site/resources/academics_page.html", {
    #this is where we will query the data from this table and send it in?
  })

def on_campus_housing(request):
  return render(request, "stucu_site/resources/on_campus_housing_page.html", {
    #this is where we will query the data from this table and send it in?
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
  return render(request, "stucu_site/resources/restaurants_page.html", {
    #this is where we will query the data from this table and send it in?
  })

def school_social_media(request):
  return render(request, "stucu_site/resources/school_social_media_page.html", {
    #this is where we will query the data from this table and send it in?
  })