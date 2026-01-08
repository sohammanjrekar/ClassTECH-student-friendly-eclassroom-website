from django.db import models

class StudentProfile(models.Model):
    SEM_CHOICES = [(i, f'{i}th') for i in range(1, 9)]
    
    # Links to the Auth User we created
    user = models.OneToOneField('users.User', on_delete=models.CASCADE, related_name='student_info')
    uin = models.CharField(max_length=10, unique=True) # Your 'UIN' field
    semester = models.IntegerField(choices=SEM_CHOICES, default=1)
    department = models.ForeignKey('classroom.Department', on_delete=models.CASCADE)
    
    # Profile Details
    phone = models.CharField(max_length=12, default='')
    parent_phone = models.CharField(max_length=12, default='')
    address = models.CharField(max_length=500, null=True)
    birth_date = models.DateField(null=True)
    image = models.ImageField(upload_to='students/', default="default.png")
    
    # Bunk-Proof Logic Field
    last_digit = models.IntegerField(editable=False, null=True)

    def save(self, *args, **kwargs):
        if self.uin:
            self.last_digit = int(self.uin[-1]) # Auto-extract last digit for 10-code logic
        super().save(*args, **kwargs)

    def __str__(self):
        return f"{self.user.first_name} {self.user.last_name} ({self.uin})"