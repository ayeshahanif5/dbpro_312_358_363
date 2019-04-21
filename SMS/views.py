from django.shortcuts import render
from django.shortcuts import get_object_or_404, render,redirect
# Create your views here.

def index(request):
    return render(request, 'SMS/index.html')

def about(request):
    return render(request, 'SMS/about-us.html')

def student(request):
    return render(request, 'SMS/AcademicDetail.html')

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