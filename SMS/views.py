from django.shortcuts import render
from django.shortcuts import get_object_or_404, render,redirect
from django.http import HttpResponseRedirect
from .models import Person, Student, Login, Request
# Create your views here.

def index(request):
    return render(request, 'SMS/index.html')

def articles(request):
    return render(request, 'SMS/articles.html')

def contact_us(request):
    return render(request, 'SMS/contact-us.html')

def site_map(request):
    return render(request, 'SMS/sitemap.html')

def about(request):
    return render(request, 'SMS/about-us.html')

def student(request):
    return render(request, 'SMS/AcademicDetail.html')

def login(request):
        if request.method == 'POST':
                print ("logged")
                name = request.POST.get('inputEmail')
                password = request.POST.get('inputPassword')
                print (name)
                print (password)
                """
                current_user = get_object_or_404(Login, username = name)
                if current_user.username == name and current_user.password == password:
                        if current_user.Role == 'Student':
                                return redirect('/sms/student/' + name )
                                """
                        
                if name == 't@t.com' and password == '1234':
                        return redirect('/sms/student/' )
                else:
                        incorrect_password = True
                        return render(request,'sms/login.html', {'incorrectPassword' :incorrect_password})
        else:
                return render(request,'sms/login.html')  

def view_student_timetable(request):
    return render(request, 'SMS/TimeTable.html')

def view_student_academic_detail(request):
    return render(request, 'SMS/AcademicDetail.html')

def view_date_sheet(request):
    return render(request, 'SMS/DateSheet.html')

def view_result(request):
    return render(request, 'SMS/Result.html')

def send_student_request(request):
    return render(request, 'SMS/Request.html')

def upload_student_assignment(request):
    return render(request, 'SMS/Assignments.html')

def view_student_fee(request):
    return render(request, 'SMS/Fee.html')


def teacher_dashboard(request):
        return render(request, 'SMS/indexT.html')

def teacher_upload_assignments(request):
        return render(request, 'SMS/AssignmentsT.html')


def teacher_attendance(request):
        return render(request, 'SMS/AttendanceT.html')


def teacher_payroll(request):
        return render(request, 'SMS/payroll.html')


def teacher_request(request):
        if request.method == 'POST':
                description = request.POST.get('Description')
                new_request = Request(personid = 1, description = description)
                new_request.save()
                return render(request, 'SMS/teacher') 


        else:
                return render(request, 'SMS/Request.html') 
        
        

def teacher_result(request):
        return render(request, 'SMS/ResultT.html')

def teacher_timetable(request):
        return render(request, 'SMS/TimetableT.html')     