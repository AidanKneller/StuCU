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


# LOGIN HANDLING
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

def update_display_name(request):
  return render(request, "stucu_site/account/update_display_name.html")

def save_display_name(request):
  new_name = request.POST['new_name']
  user_id = request.session['current_user_id']
  with connection.cursor() as cursor:
    cursor.execute('UPDATE Users SET Display_name = %s WHERE User_ID = %s', [new_name, user_id])
  request.session['current_user_display_name'] = new_name
  return profile_page(request)

# PROFILE PAGE
def profile_page(request):
  starred = Stars.objects.raw(
    '''Select 1 as id, Starred_Items.RSO_name as Name, Starred_Items.Description as Description, Starred_Items.RSO_ID as ID, Starred_Items.Category as Category From (
    Select RSO.RSO_name, RSO.Description, RSO.RSO_ID, "RSO" as Category From (Select RSO_ID from Stars where User_ID = %s AND RSO_ID is not null) as derivedRSO
    JOIN RSO on (RSO.RSO_ID = derivedRSO.RSO_ID) 
    UNION 
    Select Academics.Website_name, Academics.Description, Academics.Academics_ID, "academics" as Category
    From (Select Academics_ID from Stars where User_ID = %s AND Academics_ID is not null) as derivedAcademics JOIN Academics on (Academics.Academics_ID = derivedAcademics.Academics_ID)
    UNION 
    Select Restaurants.Restaurant_name, Restaurants.Cuisine, Restaurants.Restaurant_ID, "restaurants" as Category
    From (Select Restaurant_ID from Stars where User_ID = %s AND Restaurant_ID is not null) as derivedRestaurants
    JOIN Restaurants on (Restaurants.Restaurant_ID = derivedRestaurants.Restaurant_ID) 
    UNION
    Select Off_Campus_Housing.Company_name, Off_Campus_Housing.Description, Off_Campus_Housing.Off_Campus_Housing_ID, "off campus" as Category From
    (Select Off_Campus_Housing_ID from Stars where User_ID = %s AND Off_Campus_Housing_ID is not null) as derivedOff_Campus_Housing
    JOIN Off_Campus_Housing on (Off_Campus_Housing.Off_Campus_Housing_ID = derivedOff_Campus_Housing.Off_Campus_Housing_ID)
    UNION
    Select On_Campus_Housing.Dorm_unit_name, On_Campus_Housing.description, On_Campus_Housing.On_Campus_Housing_ID, "on campus" as Category From
    (Select On_Campus_Housing_ID from Stars where User_ID = %s AND On_Campus_Housing_ID is not null) as derivedOn_Campus_Housing
    JOIN On_Campus_Housing on (On_Campus_Housing.On_Campus_Housing_ID = derivedOn_Campus_Housing.On_Campus_Housing_ID)
    UNION
    Select School_Social_Media.Organization_name, School_Social_Media.Description, School_Social_Media.SSM_ID, "SSM" as Category From
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

def unstar_from_profile(request, category, id):
  user_id = request.session['current_user_id']
  if category == "academics":
    with connection.cursor() as cursor:
        cursor.execute('DELETE FROM Stars WHERE User_ID = %s AND Academics_ID = %s', [user_id, id])
  elif category == "RSO":
    with connection.cursor() as cursor:
        cursor.execute('DELETE FROM Stars WHERE User_ID = %s AND RSO_ID = %s', [user_id, id])
  elif category == "SSM":
    with connection.cursor() as cursor:
        cursor.execute('DELETE FROM Stars WHERE User_ID = %s AND SSM_ID = %s', [user_id, id])
  elif category == "on campus":
    with connection.cursor() as cursor:
        cursor.execute('DELETE FROM Stars WHERE User_ID = %s AND On_Campus_Housing_ID = %s', [user_id, id])
  elif category == "off campus":
    with connection.cursor() as cursor:
        cursor.execute('DELETE FROM Stars WHERE User_ID = %s AND Off_Campus_Housing_ID = %s', [user_id, id])
  elif category == "restaurants":
    with connection.cursor() as cursor:
        cursor.execute('DELETE FROM Stars WHERE User_ID = %s AND Restaurant_ID = %s', [user_id, id])

  return profile_page(request)

def landing_page(request):
  return render(request, "stucu_site/landing_page.html", {
    "categories": categories,
    "username": request.session['current_username'],
    "display_name": request.session['current_user_display_name']
  })










# INTERACTING WITH ACADEMICS TABLE
def academics(request):
  entries = Academics.objects.raw('SELECT * FROM Academics ORDER BY website_name')
  return render(request, "stucu_site/resources/academics_page.html", {
    "entries": entries
  })

def academics_by_popularity(request):
  entries = Academics.objects.raw(
    '''Select r.Academics_ID, COUNT(c.Academics_ID) as NumComments
      FROM Comments c JOIN Academics r ON(c.Academics_ID = r.Academics_ID)
      GROUP BY c.Academics_ID
      ORDER BY NumComments DESC''')
  return render(request, "stucu_site/resources/academics_page.html", {
    "entries": entries,
    "sort_type": "popularity"
  })

def academics_detail(request, id):
  results = Academics.objects.raw('SELECT * FROM Academics WHERE academics_id = %s', [id])
  is_starred = Stars.objects.raw('SELECT *, 1 as id FROM Stars WHERE user_id = %s AND academics_id = %s', [request.session['current_user_id'], id])
  comments = Comments.objects.raw('SELECT * FROM Comments WHERE User_ID = %s AND Academics_ID = %s', [request.session['current_user_id'], id])

  # Make sure that the query only returned one item, otherwise something went wrong
  if len(list(results)) == 1: 
    return render(request, "stucu_site/resources/academics_detail.html", {
      "resource": results[0],
      "is_starred": is_starred,
      "comments": comments
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

def unstar_academic(request, id):
  user_id = request.session['current_user_id']
  with connection.cursor() as cursor:
      cursor.execute('DELETE FROM Stars WHERE User_ID = %s AND Academics_ID = %s', [user_id, id])
  return academics_detail(request, id)

def academics_leave_comment(request, id):
  return render(request, "stucu_site/resources/academics_leave_comment.html", {
    "id": id
  })

def academics_save_comment(request, id):
  resource_id = id
  content = request.POST['content']
  user_id = request.session['current_user_id']
  total_comments = Comments.objects.raw('SELECT * FROM Comments')
  comment_id = len(list(total_comments)) + 1
  with connection.cursor() as cursor:
    cursor.execute("INSERT INTO Comments VALUES (%s, %s, %s, NULL, NULL, NULL, NULL, %s, NULL)", 
    [
      comment_id, 
      user_id, 
      content,
      resource_id
    ])
  return academics_detail(request, id)










# INTERACTING WITH ON CAMPUS HOUSING TABLE
def on_campus_housing(request):
  entries = OnCampusHousing.objects.raw('SELECT * FROM On_Campus_Housing ORDER BY building_name')
  return render(request, "stucu_site/resources/on_campus_housing_page.html", {
    "entries": entries
  })

def on_campus_housing_by_popularity(request):
  entries = OnCampusHousing.objects.raw(
    '''Select r.On_Campus_Housing_ID, COUNT(c.On_Campus_Housing_ID) as NumComments
      FROM Comments c JOIN On_Campus_Housing r ON(c.On_Campus_Housing_ID = r.On_Campus_Housing_ID)
      GROUP BY c.On_Campus_Housing_ID
      ORDER BY NumComments DESC''')
  return render(request, "stucu_site/resources/on_campus_housing_page.html", {
    "entries": entries,
    "sort_type": "popularity"
  })

def on_campus_housing_detail(request, id):
  results = OnCampusHousing.objects.raw('SELECT * FROM On_Campus_Housing WHERE on_campus_housing_id = %s', [id])
  is_starred = Stars.objects.raw('SELECT *, 1 as id FROM Stars WHERE user_id = %s AND on_campus_housing_id = %s', [request.session['current_user_id'], id])
  comments = Comments.objects.raw('SELECT * FROM Comments WHERE User_ID = %s AND on_campus_housing_id = %s', [request.session['current_user_id'], id])

  # Make sure that the query only returned one item, otherwise something went wrong
  if len(list(results)) == 1: 
    return render(request, "stucu_site/resources/on_campus_housing_detail.html", {
      "resource": results[0],
      "is_starred": is_starred,
      "comments": comments
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

def unstar_on_campus_housing(request, id):
  user_id = request.session['current_user_id']
  with connection.cursor() as cursor:
      cursor.execute('DELETE FROM Stars WHERE User_ID = %s AND On_Campus_Housing_ID = %s', [user_id, id])
  return on_campus_housing_detail(request, id)

def on_campus_housing_leave_comment(request, id):
  return render(request, "stucu_site/resources/on_campus_housing_leave_comment.html", {
    "id": id
  })

def on_campus_housing_save_comment(request, id):
  resource_id = id
  content = request.POST['content']
  user_id = request.session['current_user_id']
  total_comments = Comments.objects.raw('SELECT * FROM Comments')
  comment_id = len(list(total_comments)) + 1
  with connection.cursor() as cursor:
    cursor.execute("INSERT INTO Comments VALUES (%s, %s, %s, NULL, %s, NULL, NULL, NULL, NULL)", 
    [
      comment_id, 
      user_id, 
      content,
      resource_id
    ])
  return on_campus_housing_detail(request, id)








# INTERACTING WITH OFF CAMPUS HOUSING TABLE
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

# def unstar_off_campus_housing(request, id):
#   user_id = request.session['current_user_id']
#   with connection.cursor() as cursor:
#       cursor.execute('DELETE FROM Stars WHERE User_ID = %s AND Off_Campus_Housing_ID = %s', [user_id, id])
#   return off_campus_housing(request, id)










# INTERACTING WITH RSO TABLE
def registered_student_organizations(request):
  return render(request, "stucu_site/resources/registered_student_organizations_page.html", {
    #this is where we will query the data from this table and send it in?
  })










# INTERACTING WITH RESTAURANTS TABLE
def restaurants(request):
  entries = Restaurants.objects.raw('SELECT * FROM Restaurants ORDER BY restaurant_name')
  return render(request, "stucu_site/resources/restaurants_page.html", {
    "entries": entries
  })

def restaurants_by_popularity(request):
  entries = Restaurants.objects.raw(
    '''Select r.Restaurant_ID, COUNT(c.Restaurant_ID) as NumComments
      FROM Comments c JOIN Restaurants r ON(c.Restaurant_ID = r.Restaurant_ID)
      GROUP BY c.Restaurant_ID
      ORDER BY NumComments DESC''')
  return render(request, "stucu_site/resources/restaurants_page.html", {
    "entries": entries,
    "sort_type": "popularity"
  })

def restaurant_detail(request, id):
  results = Restaurants.objects.raw('SELECT * FROM Restaurants WHERE restaurant_id = %s', [id])
  is_starred = Stars.objects.raw('SELECT *, 1 as id FROM Stars WHERE user_id = %s AND restaurant_id = %s', [request.session['current_user_id'], id])
  comments = Comments.objects.raw('SELECT * FROM Comments WHERE User_ID = %s AND restaurant_id = %s', [request.session['current_user_id'], id])
  # Make sure that the query only returned one item, otherwise something went wrong
  if len(list(results)) == 1: 
    return render(request, "stucu_site/resources/restaurant_detail.html", {
      "resource": results[0],
      "is_starred": is_starred,
      "comments": comments
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

def unstar_restaurant(request, id):
  user_id = request.session['current_user_id']
  with connection.cursor() as cursor:
      cursor.execute('DELETE FROM Stars WHERE User_ID = %s AND Restaurant_ID = %s', [user_id, id])
  return restaurant_detail(request, id)

def restaurant_leave_comment(request, id):
  return render(request, "stucu_site/resources/restaurant_leave_comment.html", {
    "id": id
  })

def restaurant_save_comment(request, id):
  resource_id = id
  content = request.POST['content']
  user_id = request.session['current_user_id']
  total_comments = Comments.objects.raw('SELECT * FROM Comments')
  comment_id = len(list(total_comments)) + 1
  with connection.cursor() as cursor:
    cursor.execute("INSERT INTO Comments VALUES (%s, %s, %s, NULL, NULL, NULL, NULL, NULL, %s)", 
    [
      comment_id, 
      user_id, 
      content,
      resource_id
    ])
  return restaurant_detail(request, id)








# INTERACT WITH SSM TABLE
def school_social_media(request):
  entries = SchoolSocialMedia.objects.raw('SELECT * FROM School_Social_Media ORDER BY organization_name')
  return render(request, "stucu_site/resources/school_social_media_page.html", {
    "entries": entries
  })

def ssm_by_popularity(request):
  entries = SchoolSocialMedia.objects.raw(
    '''Select r.SSM_ID, COUNT(c.SSM_ID) as NumComments
      FROM Comments c JOIN School_Social_Media r ON(c.SSM_ID = r.SSM_ID)
      GROUP BY c.SSM_ID
      ORDER BY NumComments DESC''')
  return render(request, "stucu_site/resources/school_social_media_page.html", {
    "entries": entries,
    "sort_type": "popularity"
  })

def ssm_detail(request, id):
  results = SchoolSocialMedia.objects.raw('SELECT * FROM School_Social_Media WHERE ssm_id = %s', [id])
  is_starred = Stars.objects.raw('SELECT *, 1 as id FROM Stars WHERE user_id = %s AND ssm_id = %s', [request.session['current_user_id'], id])
  comments = Comments.objects.raw('SELECT * FROM Comments WHERE User_ID = %s AND ssm_id = %s', [request.session['current_user_id'], id])
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
        "is_starred": is_starred,
        "comments": comments
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

def unstar_school_social_media(request, id):
  user_id = request.session['current_user_id']
  with connection.cursor() as cursor:
      cursor.execute('DELETE FROM Stars WHERE User_ID = %s AND SSM_ID = %s', [user_id, id])
  return ssm_detail(request, id)

def ssm_leave_comment(request, id):
  return render(request, "stucu_site/resources/school_social_media_leave_comment.html", {
    "id": id
  })

def ssm_save_comment(request, id):
  resource_id = id
  content = request.POST['content']
  user_id = request.session['current_user_id']
  total_comments = Comments.objects.raw('SELECT * FROM Comments')
  comment_id = len(list(total_comments)) + 1
  with connection.cursor() as cursor:
    cursor.execute("INSERT INTO Comments VALUES (%s, %s, %s, %s, NULL, NULL, NULL, NULL, NULL)", 
    [
      comment_id, 
      user_id, 
      content,
      resource_id
    ])
  return ssm_detail(request, id)








# SEARCHING RESULTS
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