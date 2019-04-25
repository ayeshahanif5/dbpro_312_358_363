from django.urls import path

from . import views

app_name = 'SMS'
urlpatterns = [
    path('', views.index, name='index'),
    path('about/', views.about, name='About'),
    path('student/', views.student, name = 'student'),
    path('articles/', views.articles, name = 'Articles'),
    path('contact_us/', views.contact_us, name = 'Contact_Us'),
    path('sitemaps/', views.site_map, name = 'Sitemaps'),
    path('login/', views.login , name = 'Login'),
    path('StudentTimeTable/', views.view_student_timetable, name ='ViewTimeTableSudent'),
    path('AcademicDetail/', views.view_student_academic_detail, name = 'StudentAcademicDetail'),
    path('ViewDateSheet/' , views.view_date_sheet ,name = 'ViewDateSheet'),
    path('ViewResult/' , views.view_result ,name = 'ViewResult'),
    path('SendStudentRequest/' , views.send_student_request ,name = 'SendStudentRequest'),
    path('UploadStudentAssignment/' , views.upload_student_assignment ,name = 'UploadStudentAssignment'),
    path('ViewStudentFee/' , views.view_student_fee ,name = 'ViewStudentFee'),

    path('teacher/', views.teacher_dashboard, name = 'Teacher')
]