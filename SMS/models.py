from django.db import models

# Create your models here.
class Person1(models.Model):
    FirstName = models.CharField(max_length = 30)
    LastName = models.CharField(max_length = 30)
    Email = models.EmailField()
    DateOfBirth = models.DateField()
    Contact = models.IntegerField(max_length = 30, default='0')