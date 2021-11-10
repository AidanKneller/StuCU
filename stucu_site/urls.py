from django.urls import path

from . import views

urlpatterns = [
    path("", views.login, name="login"),
    path("processing_login/", views.process_login, name="process-login"),
    path("my_profile/", views.profile_page, name="profile-page"),
    path("my_profile/update-display-name/", views.update_display_name, name="update-display-name"),
    path("my_profile/save-display-name/", views.save_display_name, name="save-display-name"),
    path("categories/", views.landing_page, name="landing-page"),

    path("academics/", views.academics, name="academics-page"),
    path("academics/<int:id>", views.academics_detail, name="academics-detail-page"),
    path("academics/most-popular/", views.academics_by_popularity, name="academics-by-popularity"),
    path("academics/leave-comment/<int:id>", views.academics_leave_comment, name="academics-leave-comment"),
    path("academics/save-comment/<int:id>", views.academics_save_comment, name="academics-save-comment"),

    path("on_campus_housing/", views.on_campus_housing, name="on-campus-housing-page"),
    path("on_campus_housing/<int:id>", views.on_campus_housing_detail, name="on-campus-housing-detail-page"),
    path("on_campus_housing/most-popular/", views.on_campus_housing_by_popularity, name="on-campus-housing-by-popularity"),
    path("on_campus_housing/leave-comment/<int:id>", views.on_campus_housing_leave_comment, name="on-campus-housing-leave-comment"),
    path("on_campus_housing/save-comment/<int:id>", views.on_campus_housing_save_comment, name="on-campus-housing-save-comment"),

    path("off_campus_housing/", views.off_campus_housing, name="off-campus-housing-page"),
    #path("off_campus_housing/<str:company>", views.off_campus_housing_detail, name="off-campus-housing-detail-page"),
    #path("off_campus_housing/most-popular/", views.off_campus_housing_by_popularity, name="off-campus-housing-by-popularity"),
    #path("off_campus_housing/leave-comment/<int:id>", views.off_campus_housing_leave_comment, name="off-campus-housing-leave-comment"),
    #path("off_campus_housing/save-comment/<int:id>", views.off_campus_housing_save_comment, name="off-campus-housing-save-comment"),

    path("registered_student_organizations/", views.registered_student_organizations, name="registered-student-organizations-page"),
    #path("registered_student_organizations/<str:rso>", views.rso_detail, name="registered-student-organizations-detail-page"),
    #path("registered_student_organizations/most-popular/", views.rso_by_popularity, name="registered-student-organizations-by-popularity"),
    #path("registered_student_organizations/leave-comment/<int:id>", views.rso_leave_comment, name="registered-student-organization-leave-comment"),
    #path("registered_student_organizations/save-comment/<int:id>", views.rso_save_comment, name="registered-student-organization-save-comment"),

    path("restaurants/", views.restaurants, name="restaurants-page"),
    path("restaurants/<int:id>", views.restaurant_detail, name="restaurant-detail-page"),
    path("restaurants/most-popular/", views.restaurants_by_popularity, name="restaurants-by-popularity"),
    path("restaurants/leave-comment/<int:id>", views.restaurant_leave_comment, name="restaurant-leave-comment"),
    path("restaurants/save-comment/<int:id>", views.restaurant_save_comment, name="restaurant-save-comment"),

    path("school_social_media/", views.school_social_media, name="school-social-media-page"),
    path("school_social_media/<int:id>", views.ssm_detail, name="school-social-media-detail-page"),
    path("school_social_media/most-popular/", views.ssm_by_popularity, name="school-social-media-by-popularity"),
    path("school_social_media/leave-comment/<int:id>", views.ssm_leave_comment, name="school-social-media-leave-comment"),
    path("school_social_media/save-comment/<int:id>", views.ssm_save_comment, name="school-social-media-save-comment"),

    path("search_results/", views.search_results, name="search-results"),

    path("academics/starring/<int:id>", views.star_academic, name="star-academic"),
    path("academics/unstarring/<int:id>", views.unstar_academic, name="unstar-academic"),

    path("on_campus_housing/starring/<int:id>", views.star_on_campus_housing, name="star-on-campus-housing"),
    path("on_campus_housing/unstarring/<int:id>", views.unstar_on_campus_housing, name="unstar-on-campus-housing"),

    #path("off_campus_housing/starring/<int:id>", views.star_off_campus_housing, name="star-off-campus-housing"),
    #path("off_campus_housing/unstarring/<int:id>", views.unstar_off_campus_housing, name="unstar-off-campus-housing"),

    #path("registered_student_organizations/starring/<int:id>", views.star_registered_student_organizations, name="star-rso"),
    #path("registered_student_organizations/unstarring/<int:id>", views.unstar_registered_student_organizations, name="unstar-rso"),

    path("restaurants/starring/<int:id>", views.star_restaurant, name="star-restaurant"),
    path("restaurants/unstarring/<int:id>", views.unstar_restaurant, name="unstar-restaurant"),

    path("school_social_media/starring/<int:id>", views.star_school_social_media, name="star-ssm"),
    path("school_social_media/unstarring/<int:id>", views.unstar_school_social_media, name="unstar-ssm"),

    path("profile/unstar/<str:category>/<int:id>", views.unstar_from_profile, name="unstar-from-profile"),
]
