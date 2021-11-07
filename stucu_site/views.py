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

def login(request):
  return render(request, "stucu_site/account/login.html")

def process_login(request):
  if request.method == 'POST':
    username = request.POST['username']
    password = request.POST['password']
    found_users = Users.objects.raw('SELECT * FROM Users WHERE username = %s AND password = %s', [username, password])
    if len(list(found_users)) == 1:
      this_user = found_users[0]
      request.session['current_user_id'] = this_user.user_id
      request.session['current_username'] = this_user.username
      request.session['current_user_display_name'] = this_user.display_name
      return landing_page(request)
    else:
      return render(request, "stucu_site/account/login.html")
  else:
    return render(request, "stucu_site/account/login.html")

def profile_page(request):
  return render(request, "stucu_site/account/profile_page.html", {
    "username": request.session['current_username'],
    "display_name": request.session['current_user_display_name']
  })

def landing_page(request):
  return render(request, "stucu_site/landing_page.html", {
    "categories": categories,
    "username": request.session['current_username'],
    "display_name": request.session['current_user_display_name']
  })

def academics(request):
  entries = Academics.objects.raw('SELECT * FROM Academics ORDER BY website_name')
  return render(request, "stucu_site/resources/academics_page.html", {
    "entries": entries
  })

def academics_detail(request, id):
  results = Academics.objects.raw('SELECT * FROM Academics WHERE academics_id = %s', [id])
  # Make sure that the query only returned one item, otherwise something went wrong
  if len(list(results)) == 1: 
    return render(request, "stucu_site/resources/academics_detail.html", {
      "resource": results[0]
    })
  else:
    return render(request, "stucu_site/resources/academics_detail.html", {
      "error_message": "Oh no! Something went wrong with accessing this resource."
    })

def on_campus_housing(request):
  entries = OnCampusHousing.objects.raw('SELECT * FROM On_Campus_Housing ORDER BY building_name')
  return render(request, "stucu_site/resources/on_campus_housing_page.html", {
    "entries": entries
  })

def on_campus_housing_detail(request, id):
  results = OnCampusHousing.objects.raw('SELECT * FROM On_Campus_Housing WHERE on_campus_housing_id = %s', [id])
  # Make sure that the query only returned one item, otherwise something went wrong
  if len(list(results)) == 1: 
    return render(request, "stucu_site/resources/on_campus_housing_detail.html", {
      "resource": results[0]
    })
  else:
    return render(request, "stucu_site/resources/on_campus_housing_detail.html", {
      "error_message": "Oh no! Something went wrong with accessing this resource."
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
  entries = Restaurants.objects.raw('SELECT * FROM Restaurants ORDER BY restaurant_name')
  return render(request, "stucu_site/resources/restaurants_page.html", {
    "entries": entries
  })

def restaurant_detail(request, id):
  results = Restaurants.objects.raw('SELECT * FROM Restaurants WHERE restaurant_id = %s', [id])
  # Make sure that the query only returned one item, otherwise something went wrong
  if len(list(results)) == 1: 
    return render(request, "stucu_site/resources/restaurant_detail.html", {
      "resource": results[0]
    })
  else:
    return render(request, "stucu_site/resources/restaurant_detail.html", {
      "error_message": "Oh no! Something went wrong with accessing this resource."
    })

def school_social_media(request):
  entries = SchoolSocialMedia.objects.raw('SELECT * FROM School_Social_Media ORDER BY organization_name')
  return render(request, "stucu_site/resources/school_social_media_page.html", {
    "entries": entries
  })

def ssm_detail(request, id):
  results = SchoolSocialMedia.objects.raw('SELECT * FROM School_Social_Media WHERE ssm_id = %s', [id])
  # Make sure that the query only returned one item, otherwise something went wrong
  if len(list(results)) == 1: 
      resource = results[0]
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
  else:
    return render(request, "stucu_site/resources/school_social_media_detail.html", {
      "error_message": "Oh no! Something went wrong with accessing this resource."
    })

# need to add proper search!
def search_results(request):
  if request.method == "POST":
    searched = request.POST['searched']
    searched_name = '%' + searched + '%'
    academics_name_like = Academics.objects.raw('SELECT * FROM Academics WHERE website_name LIKE %s ORDER BY website_name', [searched_name])
    off_campus_name_like = OffCampusHousing.objects.raw('SELECT * FROM Off_Campus_Housing WHERE company_name LIKE %s ORDER BY company_name', [searched_name])
    on_campus_name_like = OnCampusHousing.objects.raw('SELECT * FROM On_Campus_Housing WHERE dorm_unit_name LIKE %s ORDER BY dorm_unit_name', [searched_name])
    print(on_campus_name_like)
    rso_name_like = Rso.objects.raw('SELECT * FROM RSO WHERE rso_name LIKE %s ORDER BY rso_name', [searched_name])
    restaurants_name_like = Restaurants.objects.raw('SELECT * FROM Restaurants WHERE restaurant_name LIKE %s ORDER BY restaurant_name', [searched_name])
    ssm_name_like = SchoolSocialMedia.objects.raw('SELECT * FROM School_Social_Media WHERE organization_name LIKE %s ORDER BY organization_name', [searched_name])
    return render(request, "stucu_site/search_results.html", {
      "searched": searched,
      "academic_name_matches": academics_name_like,
      "off_campus_matches": off_campus_name_like,
      "on_campus_matches": on_campus_name_like,
      "rso_matches": rso_name_like,
      "restaurants_matches": restaurants_name_like,
      "ssm_matches": ssm_name_like
    })
  else:
    return render(request, "stucu_site/search_results.html", {})