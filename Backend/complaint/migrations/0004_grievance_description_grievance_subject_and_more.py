# Generated by Django 4.2 on 2023-04-11 19:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('complaint', '0003_alter_grievance_guser'),
    ]

    operations = [
        migrations.AddField(
            model_name='grievance',
            name='Description',
            field=models.TextField(max_length=4000, null=True),
        ),
        migrations.AddField(
            model_name='grievance',
            name='Subject',
            field=models.CharField(max_length=200, null=True),
        ),
        migrations.AddField(
            model_name='grievance',
            name='Time',
            field=models.DateField(auto_now=True),
        ),
    ]