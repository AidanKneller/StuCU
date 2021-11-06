from django.urls import path

from . import views

urlpatterns = [
    path("", views.landing_page, name="landing-page"),
    path("academics/", views.academics, name="academics-page"),
    path("academics/<str:academic_name>", views.academics_detail, name="academics-detail-page"),
    path("on-campus-housing/", views.on_campus_housing, name="on-campus-housing-page"),
    path("off-campus-housing/", views.off_campus_housing, name="off-campus-housing-page"),
    path("registered-student-organizations/", views.registered_student_organizations, name="registered-student-organizations-page"),
    path("restaurants/", views.restaurants, name="restaurants-page"),
    path("school-social-media/", views.school_social_media, name="school-social-media-page"),
]
