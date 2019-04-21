from django.urls import path

from . import views

app_name = 'SMS'
urlpatterns = [
    path('', views.index, name='index'),
    path('about/', views.about, name='about'),
    path('student/', views.student, name = 'student'),
    path('StudentTimeTable/', views.view_student_timetable, name ='ViewTimeTableSudent'),
    path('AcademicDetail/', views.view_student_academic_detail, name = 'StudentAcademicDetail'),
    path('ViewDateSheet/' , views.view_date_sheet ,name = 'ViewDateSheet'),
    path('ViewResult/' , views.view_result ,name = 'ViewResult'),
    path('SendStudentRequest/' , views.send_student_request ,name = 'SendStudentRequest'),
    path('UploadStudentAssignment/' , views.upload_student_assignment ,name = 'UploadStudentAssignment'),
    path('ViewStudentFee/' , views.view_student_fee ,name = 'ViewStudentFee'),
]