# Generated by Django 3.2.8 on 2021-11-06 01:46

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Academics',
            fields=[
                ('academics_id', models.IntegerField(db_column='Academics_ID', primary_key=True, serialize=False)),
                ('website_name', models.CharField(blank=True, db_column='Website_name', max_length=400, null=True)),
                ('website_link', models.CharField(blank=True, db_column='Website_link', max_length=1000, null=True)),
                ('description', models.CharField(blank=True, db_column='Description', max_length=1000, null=True)),
            ],
            options={
                'db_table': 'Academics',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Comments',
            fields=[
                ('comment_id', models.IntegerField(db_column='Comment_ID', primary_key=True, serialize=False)),
                ('content', models.CharField(db_column='Content', max_length=1000)),
            ],
            options={
                'db_table': 'Comments',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='OffCampusHousing',
            fields=[
                ('off_campus_housing_id', models.IntegerField(db_column='Off_Campus_Housing_ID', primary_key=True, serialize=False)),
                ('company_name', models.CharField(db_column='Company_name', max_length=255)),
                ('email', models.CharField(blank=True, db_column='Email', max_length=255, null=True)),
                ('phone', models.CharField(blank=True, db_column='Phone', max_length=10, null=True)),
                ('website_link', models.CharField(blank=True, db_column='Website_link', max_length=1000, null=True)),
                ('address', models.CharField(db_column='Address', max_length=255)),
                ('building_name', models.CharField(blank=True, db_column='Building_name', max_length=255, null=True)),
                ('description', models.CharField(blank=True, db_column='Description', max_length=1000, null=True)),
            ],
            options={
                'db_table': 'Off_Campus_Housing',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='OnCampusHousing',
            fields=[
                ('on_campus_housing_id', models.IntegerField(db_column='On_Campus_Housing_ID', primary_key=True, serialize=False)),
                ('dorm_unit_name', models.CharField(db_column='Dorm_unit_name', max_length=255)),
                ('email', models.CharField(blank=True, db_column='Email', max_length=255, null=True)),
                ('phone', models.CharField(blank=True, db_column='Phone', max_length=15, null=True)),
                ('website_link', models.CharField(blank=True, db_column='Website_link', max_length=1000, null=True)),
                ('address', models.CharField(db_column='Address', max_length=255)),
                ('building_name', models.CharField(blank=True, db_column='Building_name', max_length=255, null=True)),
                ('description', models.CharField(blank=True, db_column='Description', max_length=1000, null=True)),
            ],
            options={
                'db_table': 'On_Campus_Housing',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Restaurants',
            fields=[
                ('restaurant_id', models.IntegerField(db_column='Restaurant_ID', primary_key=True, serialize=False)),
                ('restaurant_name', models.CharField(db_column='Restaurant_name', max_length=255)),
                ('phone', models.CharField(blank=True, db_column='Phone', max_length=10, null=True)),
                ('cuisine', models.CharField(blank=True, db_column='Cuisine', max_length=255, null=True)),
                ('address', models.CharField(db_column='Address', max_length=255)),
                ('website_link', models.CharField(blank=True, db_column='Website_link', max_length=255, null=True)),
            ],
            options={
                'db_table': 'Restaurants',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Rso',
            fields=[
                ('rso_id', models.IntegerField(db_column='RSO_ID', primary_key=True, serialize=False)),
                ('rso_name', models.CharField(db_column='RSO_name', max_length=255)),
                ('email', models.CharField(blank=True, db_column='Email', max_length=255, null=True)),
                ('phone', models.CharField(blank=True, db_column='Phone', max_length=10, null=True)),
                ('website_link', models.CharField(blank=True, db_column='Website_link', max_length=1000, null=True)),
                ('description', models.CharField(blank=True, db_column='Description', max_length=1000, null=True)),
            ],
            options={
                'db_table': 'RSO',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='SchoolSocialMedia',
            fields=[
                ('ssm_id', models.IntegerField(db_column='SSM_ID', primary_key=True, serialize=False)),
                ('organization_name', models.CharField(db_column='Organization_name', max_length=255)),
                ('facebook_link', models.CharField(blank=True, db_column='Facebook_link', max_length=1000, null=True)),
                ('instagram_link', models.CharField(blank=True, db_column='Instagram_link', max_length=1000, null=True)),
                ('linkedin_link', models.CharField(blank=True, db_column='LinkedIn_link', max_length=1000, null=True)),
                ('twitter_link', models.CharField(blank=True, db_column='Twitter_link', max_length=1000, null=True)),
                ('snapchat_link', models.CharField(blank=True, db_column='Snapchat_link', max_length=1000, null=True)),
                ('youtube_link', models.CharField(blank=True, db_column='YouTube_link', max_length=1000, null=True)),
                ('pinterest_link', models.CharField(blank=True, db_column='Pinterest_link', max_length=1000, null=True)),
                ('weibo_link', models.CharField(blank=True, db_column='Weibo_link', max_length=1000, null=True)),
            ],
            options={
                'db_table': 'School_Social_Media',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Stars',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time_starred', models.DateTimeField(db_column='Time_Starred')),
            ],
            options={
                'db_table': 'Stars',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Users',
            fields=[
                ('user_id', models.IntegerField(db_column='User_ID', primary_key=True, serialize=False)),
                ('display_name', models.CharField(blank=True, db_column='Display_name', max_length=255, null=True)),
                ('username', models.CharField(db_column='Username', max_length=255)),
                ('password', models.CharField(db_column='Password', max_length=255)),
            ],
            options={
                'db_table': 'Users',
                'managed': False,
            },
        ),
    ]
