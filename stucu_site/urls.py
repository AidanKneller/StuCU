from django.urls import path

from . import views

urlpatterns = [
    path("", views.login, name="login"),
    path("processing_login/", views.process_login, name="process-login"),
    path("my_profile/", views.profile_page, name="profile-page"),
    path("categories/", views.landing_page, name="landing-page"),
    path("academics/", views.academics, name="academics-page"),
    path("academics/<int:id>", views.academics_detail, name="academics-detail-page"),
    path("on_campus_housing/", views.on_campus_housing, name="on-campus-housing-page"),
    path("on_campus_housing/<int:id>", views.on_campus_housing_detail, name="on-campus-housing-detail-page"),
    path("off_campus_housing/", views.off_campus_housing, name="off-campus-housing-page"),
    #path("off_campus_housing/<str:company>", views.off_campus_housing_detail, name="off-campus-housing-detail-page"),
    path("registered_student_organizations/", views.registered_student_organizations, name="registered-student-organizations-page"),
    #path("registered_student_organizations/<str:rso>", views.rso_detail, name="registered-student-organizations-detail-page"),
    path("restaurants/", views.restaurants, name="restaurants-page"),
    path("restaurants/<int:id>", views.restaurant_detail, name="restaurant-detail-page"),
    path("school_social_media/", views.school_social_media, name="school-social-media-page"),
    path("school_social_media/<int:id>", views.ssm_detail, name="school-social-media-detail-page"),
    path("search_results/", views.search_results, name="search-results")
]
