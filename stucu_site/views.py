from django.shortcuts import render
from django.db import connection
from .models import *
from datetime import datetime

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
  starred = Stars.objects.raw(
    '''Select 1 as id, Starred_Items.RSO_name as Name, Starred_Items.Description as Description From (
    Select RSO.RSO_name, RSO.Description From (Select RSO_ID from Stars where User_ID = %s AND RSO_ID is not null) as derivedRSO
    JOIN RSO on (RSO.RSO_ID = derivedRSO.RSO_ID) 
    UNION 
    Select Academics.Website_name, Academics.Description
    From (Select Academics_ID from Stars where User_ID = %s AND Academics_ID is not null) as derivedAcademics JOIN Academics on (Academics.Academics_ID = derivedAcademics.Academics_ID)
    UNION 
    Select Restaurants.Restaurant_name, Restaurants.Cuisine
    From (Select Restaurant_ID from Stars where User_ID = %s AND Restaurant_ID is not null) as derivedRestaurants
    JOIN Restaurants on (Restaurants.Restaurant_ID = derivedRestaurants.Restaurant_ID) 
    UNION
    Select Off_Campus_Housing.Company_name, Off_Campus_Housing.description From
    (Select Off_Campus_Housing_ID from Stars where User_ID = %s AND Off_Campus_Housing_ID is not null) as derivedOff_Campus_Housing
    JOIN Off_Campus_Housing on (Off_Campus_Housing.Off_Campus_Housing_ID = derivedOff_Campus_Housing.Off_Campus_Housing_ID)
    UNION
    Select On_Campus_Housing.Dorm_unit_name, On_Campus_Housing.description From
    (Select On_Campus_Housing_ID from Stars where User_ID = %s AND On_Campus_Housing_ID is not null) as derivedOn_Campus_Housing
    JOIN On_Campus_Housing on (On_Campus_Housing.On_Campus_Housing_ID = derivedOn_Campus_Housing.On_Campus_Housing_ID)
    UNION
    Select School_Social_Media.Organization_name, School_Social_Media.Description From
    (Select SSM_ID from Stars where User_ID = %s AND SSM_ID is not null) as derivedSchool_Social_Media
    JOIN School_Social_Media on (School_Social_Media.SSM_ID = derivedSchool_Social_Media.SSM_ID)) as Starred_Items''',
    [request.session['current_user_id'], request.session['current_user_id'], 
      request.session['current_user_id'], request.session['current_user_id'],
      request.session['current_user_id'], request.session['current_user_id']]
  )
  return render(request, "stucu_site/account/profile_page.html", {
    "username": request.session['current_username'],
    "display_name": request.session['current_user_display_name'],
    "starred": starred
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
  is_starred = Stars.objects.raw('SELECT *, 1 as id FROM Stars WHERE user_id = %s AND academics_id = %s', [request.session['current_user_id'], id])
  # Make sure that the query only returned one item, otherwise something went wrong
  if len(list(results)) == 1: 
    return render(request, "stucu_site/resources/academics_detail.html", {
      "resource": results[0],
      "is_starred": is_starred
    })
  else:
    return render(request, "stucu_site/resources/academics_detail.html", {
      "error_message": "Oh no! Something went wrong with accessing this resource."
    })

def star_academic(request, id):
  timestamp = datetime.now()
  user_id = request.session['current_user_id']
  with connection.cursor() as cursor:
      cursor.execute("INSERT INTO Stars VALUES (%s, NULL, NULL, NULL, NULL, %s, NULL, %s)", [user_id, id, timestamp])
  return academics_detail(request, id)

def on_campus_housing(request):
  entries = OnCampusHousing.objects.raw('SELECT * FROM On_Campus_Housing ORDER BY building_name')
  return render(request, "stucu_site/resources/on_campus_housing_page.html", {
    "entries": entries
  })

def on_campus_housing_detail(request, id):
  results = OnCampusHousing.objects.raw('SELECT * FROM On_Campus_Housing WHERE on_campus_housing_id = %s', [id])
  is_starred = Stars.objects.raw('SELECT *, 1 as id FROM Stars WHERE user_id = %s AND on_campus_housing_id = %s', [request.session['current_user_id'], id])
  # Make sure that the query only returned one item, otherwise something went wrong
  if len(list(results)) == 1: 
    return render(request, "stucu_site/resources/on_campus_housing_detail.html", {
      "resource": results[0],
      "is_starred": is_starred
    })
  else:
    return render(request, "stucu_site/resources/on_campus_housing_detail.html", {
      "error_message": "Oh no! Something went wrong with accessing this resource."
    })

def star_on_campus_housing(request, id):
  timestamp = datetime.now()
  user_id = request.session['current_user_id']
  with connection.cursor() as cursor:
      cursor.execute("INSERT INTO Stars VALUES (%s, NULL, %s, NULL, NULL, NULL, NULL, %s)", [user_id, id, timestamp])
  return on_campus_housing_detail(request, id)

def off_campus_housing(request):
  return render(request, "stucu_site/resources/off_campus_housing_page.html", {
    #this is where we will query the data from this table and send it in?
  })

# def on_campus_housing_detail(request, id):
#   results = OffCampusHousing.objects.raw('SELECT * FROM Off_Campus_Housing WHERE off_campus_housing_id = %s', [id])
#   # Make sure that the query only returned one item, otherwise something went wrong
#   if len(list(results)) == 1: 
#     return render(request, "stucu_site/resources/off_campus_housing_detail.html", {
#       "resource": results[0]
#     })
#   else:
#     return render(request, "stucu_site/resources/off_campus_housing_detail.html", {
#       "error_message": "Oh no! Something went wrong with accessing this resource."
#     })

# def star_off_campus_housing(request, id):
#   timestamp = datetime.now()
#   user_id = request.session['current_user_id']
#   with connection.cursor() as cursor:
#       cursor.execute("INSERT INTO Stars VALUES (%s, NULL, NULL, %s, NULL, NULL, NULL, %s)", [user_id, id, timestamp])
#   return off_campus_housing_detail(request, id)

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
  is_starred = Stars.objects.raw('SELECT *, 1 as id FROM Stars WHERE user_id = %s AND restaurant_id = %s', [request.session['current_user_id'], id])
  # Make sure that the query only returned one item, otherwise something went wrong
  if len(list(results)) == 1: 
    return render(request, "stucu_site/resources/restaurant_detail.html", {
      "resource": results[0],
      "is_starred": is_starred
    })
  else:
    return render(request, "stucu_site/resources/restaurant_detail.html", {
      "error_message": "Oh no! Something went wrong with accessing this resource."
    })

def star_restaurant(request, id):
  timestamp = datetime.now()
  user_id = request.session['current_user_id']
  with connection.cursor() as cursor:
      cursor.execute("INSERT INTO Stars VALUES (%s, NULL, NULL, NULL, NULL, NULL, %s, %s)", [user_id, id, timestamp])
  return restaurant_detail(request, id)

def school_social_media(request):
  entries = SchoolSocialMedia.objects.raw('SELECT * FROM School_Social_Media ORDER BY organization_name')
  return render(request, "stucu_site/resources/school_social_media_page.html", {
    "entries": entries
  })

def ssm_detail(request, id):
  results = SchoolSocialMedia.objects.raw('SELECT * FROM School_Social_Media WHERE ssm_id = %s', [id])
  is_starred = Stars.objects.raw('SELECT *, 1 as id FROM Stars WHERE user_id = %s AND ssm_id = %s', [request.session['current_user_id'], id])
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
        "socials": socials,
        "is_starred": is_starred
      })
  else:
    return render(request, "stucu_site/resources/school_social_media_detail.html", {
      "error_message": "Oh no! Something went wrong with accessing this resource."
    })

def star_school_social_media(request, id):
  timestamp = datetime.now()
  user_id = request.session['current_user_id']
  with connection.cursor() as cursor:
      cursor.execute("INSERT INTO Stars VALUES (%s, %s, NULL, NULL, NULL, NULL, NULL, %s)", [user_id, id, timestamp])
  return ssm_detail(request, id)

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