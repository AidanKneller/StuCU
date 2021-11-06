from django.urls import path

from . import views

urlpatterns = [
    path("", views.landing_page, name="landing-page"),
    path("academics/", views.academics, name="academics-page"),
    path("academics/<str:academic_name>", views.academics_detail, name="academics-detail-page"),
    path("on-campus-housing/", views.on_campus_housing, name="on-campus-housing-page"),
    path("on-campus-housing/<str:building>", views.on_campus_housing_detail, name="on-campus-housing-detail-page"),
    path("off-campus-housing/", views.off_campus_housing, name="off-campus-housing-page"),
    #path("off-campus-housing/<str:company>", views.off_campus_housing_detail, name="off-campus-housing-detail-page"),
    path("registered-student-organizations/", views.registered_student_organizations, name="registered-student-organizations-page"),
    #path("registered-student-organizations/<str:rso>", views.rso_detail, name="registered-student-organizations-detail-page"),
    path("restaurants/", views.restaurants, name="restaurants-page"),
    #path("restaurants/<str:restaurant_name>", views.restaurants_detail, name="restaurants-detail-page"),
    path("school-social-media/", views.school_social_media, name="school-social-media-page"),
    #path("school-social-media/<str:ssm_name>", views.ssm_detail, name="school-social-media-detail-page")
]
