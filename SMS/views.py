from django.shortcuts import render
from django.shortcuts import get_object_or_404, render,redirect
from django.http import HttpResponseRedirect
from .models import Person,Student
from django.http import HttpResponse
from django.views.generic import View
from django.template.loader import get_template
from .utils import render_to_pdf
from .models import Teacher
#import io
#from django.http import FileResponse
#from reportlab.pdfgen import canvas
import io
from django.http import FileResponse
from reportlab.pdfgen import canvas

from io import BytesIO
from reportlab.pdfgen import canvas
from django.http import HttpResponse

# Create your views here.

def index(request):
    return render(request, 'SMS/index.html')

#def articles(request):
   # return render(request, 'SMS/articles.html')

def contact_us(request):
    return render(request, 'SMS/contact-us.html')

#def site_map(request):
    #return render(request, 'SMS/sitemap.html')

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
                if name == 's@s.com' and password == '1234':
                        student = Person.objects.get()
                        return redirect('/sms/student/' )
                elif name == 't@t.com' and password == '1234':
                        return redirect('/sms/teacher/' )
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
        return render(request, 'SMS/RequestT.html')

def teacher_result(request):
        return render(request, 'SMS/ResultT.html')

def teacher_timetable(request):
        return render(request, 'SMS/TimetableT.html')

def teacher_DateSheet(request):
        return render(request, 'SMS/DateSheetT.html')
         
#def GeneratePDF(request):
def GeneratePDF(request):#self, request, #*args, #**kwargs):
        template = get_template('SMS/invoice.html')
        context = {
                "fee_id": 123,
                "Registration Number": "2016cs363",
                "amount": 3000,
                 "today": "Today",
                }
        html = template.render(context)
        pdf = render_to_pdf('SMS/invoice.html', context)
        if pdf:
                response = HttpResponse(pdf, content_type='application/pdf')
                filename = "Invoice_%s.pdf" %("12341231")
                content = "inline; filename='%s'" %(filename)
                download = request.GET.get("download")
                if download:
                        content = "attachment; filename='%s'" %(filename)
                response['Content-Disposition'] = content
                return response
        return HttpResponse("Not found")
         

      
        


    
       
      
                

        # Create a file-like buffer to receive PDF data.
   
         
     

        
    