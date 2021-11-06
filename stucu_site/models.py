# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Academics(models.Model):
    academics_id = models.IntegerField(db_column='Academics_ID', primary_key=True)  # Field name made lowercase.
    website_name = models.CharField(db_column='Website_name', max_length=400, blank=True, null=True)  # Field name made lowercase.
    website_link = models.CharField(db_column='Website_link', max_length=1000, blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=1000, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Academics'


class Comments(models.Model):
    comment_id = models.IntegerField(db_column='Comment_ID', primary_key=True)  # Field name made lowercase.
    user = models.ForeignKey('Users', models.DO_NOTHING, db_column='User_ID', blank=True, null=True)  # Field name made lowercase.
    content = models.CharField(db_column='Content', max_length=1000)  # Field name made lowercase.
    ssm = models.ForeignKey('SchoolSocialMedia', models.DO_NOTHING, db_column='SSM_ID', blank=True, null=True)  # Field name made lowercase.
    on_campus_housing = models.ForeignKey('OnCampusHousing', models.DO_NOTHING, db_column='On_Campus_Housing_ID', blank=True, null=True)  # Field name made lowercase.
    off_campus_housing = models.ForeignKey('OffCampusHousing', models.DO_NOTHING, db_column='Off_Campus_Housing_ID', blank=True, null=True)  # Field name made lowercase.
    rso = models.ForeignKey('Rso', models.DO_NOTHING, db_column='RSO_ID', blank=True, null=True)  # Field name made lowercase.
    academics = models.ForeignKey(Academics, models.DO_NOTHING, db_column='Academics_ID', blank=True, null=True)  # Field name made lowercase.
    restaurant = models.ForeignKey('Restaurants', models.DO_NOTHING, db_column='Restaurant_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Comments'


class OffCampusHousing(models.Model):
    off_campus_housing_id = models.IntegerField(db_column='Off_Campus_Housing_ID', primary_key=True)  # Field name made lowercase.
    company_name = models.CharField(db_column='Company_name', max_length=255)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=255, blank=True, null=True)  # Field name made lowercase.
    phone = models.CharField(db_column='Phone', max_length=10, blank=True, null=True)  # Field name made lowercase.
    website_link = models.CharField(db_column='Website_link', max_length=1000, blank=True, null=True)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=255)  # Field name made lowercase.
    building_name = models.CharField(db_column='Building_name', max_length=255, blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=1000, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Off_Campus_Housing'


class OnCampusHousing(models.Model):
    on_campus_housing_id = models.IntegerField(db_column='On_Campus_Housing_ID', primary_key=True)  # Field name made lowercase.
    dorm_unit_name = models.CharField(db_column='Dorm_unit_name', max_length=255)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=255, blank=True, null=True)  # Field name made lowercase.
    phone = models.CharField(db_column='Phone', max_length=15, blank=True, null=True)  # Field name made lowercase.
    website_link = models.CharField(db_column='Website_link', max_length=1000, blank=True, null=True)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=255)  # Field name made lowercase.
    building_name = models.CharField(db_column='Building_name', max_length=255, blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=1000, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'On_Campus_Housing'


class Rso(models.Model):
    rso_id = models.IntegerField(db_column='RSO_ID', primary_key=True)  # Field name made lowercase.
    rso_name = models.CharField(db_column='RSO_name', max_length=255)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=255, blank=True, null=True)  # Field name made lowercase.
    phone = models.CharField(db_column='Phone', max_length=10, blank=True, null=True)  # Field name made lowercase.
    website_link = models.CharField(db_column='Website_link', max_length=1000, blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=1000, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'RSO'


class Restaurants(models.Model):
    restaurant_id = models.IntegerField(db_column='Restaurant_ID', primary_key=True)  # Field name made lowercase.
    restaurant_name = models.CharField(db_column='Restaurant_name', max_length=255)  # Field name made lowercase.
    phone = models.CharField(db_column='Phone', max_length=10, blank=True, null=True)  # Field name made lowercase.
    cuisine = models.CharField(db_column='Cuisine', max_length=255, blank=True, null=True)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=255)  # Field name made lowercase.
    website_link = models.CharField(db_column='Website_link', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Restaurants'


class SchoolSocialMedia(models.Model):
    ssm_id = models.IntegerField(db_column='SSM_ID', primary_key=True)  # Field name made lowercase.
    organization_name = models.CharField(db_column='Organization_name', max_length=255)  # Field name made lowercase.
    facebook_link = models.CharField(db_column='Facebook_link', max_length=1000, blank=True, null=True)  # Field name made lowercase.
    instagram_link = models.CharField(db_column='Instagram_link', max_length=1000, blank=True, null=True)  # Field name made lowercase.
    linkedin_link = models.CharField(db_column='LinkedIn_link', max_length=1000, blank=True, null=True)  # Field name made lowercase.
    twitter_link = models.CharField(db_column='Twitter_link', max_length=1000, blank=True, null=True)  # Field name made lowercase.
    snapchat_link = models.CharField(db_column='Snapchat_link', max_length=1000, blank=True, null=True)  # Field name made lowercase.
    youtube_link = models.CharField(db_column='YouTube_link', max_length=1000, blank=True, null=True)  # Field name made lowercase.
    pinterest_link = models.CharField(db_column='Pinterest_link', max_length=1000, blank=True, null=True)  # Field name made lowercase.
    weibo_link = models.CharField(db_column='Weibo_link', max_length=1000, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'School_Social_Media'


class Stars(models.Model):
    user = models.ForeignKey('Users', models.DO_NOTHING, db_column='User_ID', blank=True, null=True)  # Field name made lowercase.
    ssm = models.ForeignKey(SchoolSocialMedia, models.DO_NOTHING, db_column='SSM_ID', blank=True, null=True)  # Field name made lowercase.
    on_campus_housing = models.ForeignKey(OnCampusHousing, models.DO_NOTHING, db_column='On_Campus_Housing_ID', blank=True, null=True)  # Field name made lowercase.
    off_campus_housing = models.ForeignKey(OffCampusHousing, models.DO_NOTHING, db_column='Off_Campus_Housing_ID', blank=True, null=True)  # Field name made lowercase.
    rso = models.ForeignKey(Rso, models.DO_NOTHING, db_column='RSO_ID', blank=True, null=True)  # Field name made lowercase.
    academics = models.ForeignKey(Academics, models.DO_NOTHING, db_column='Academics_ID', blank=True, null=True)  # Field name made lowercase.
    restaurant = models.ForeignKey(Restaurants, models.DO_NOTHING, db_column='Restaurant_ID', blank=True, null=True)  # Field name made lowercase.
    time_starred = models.DateTimeField(db_column='Time_Starred')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Stars'


class Users(models.Model):
    user_id = models.IntegerField(db_column='User_ID', primary_key=True)  # Field name made lowercase.
    display_name = models.CharField(db_column='Display_name', max_length=255, blank=True, null=True)  # Field name made lowercase.
    username = models.CharField(db_column='Username', max_length=255)  # Field name made lowercase.
    password = models.CharField(db_column='Password', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Users'
