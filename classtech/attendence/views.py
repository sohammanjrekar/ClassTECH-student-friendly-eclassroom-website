from django.shortcuts import render
import cv2 as cv
from attendence.simple_Face_Rec import SimpleFacerec
from datetime import datetime, date
import pandas as pd
import datetime
from bluetooth import *
uin_blutooth = []

# Create your views here.
# Function to render the request to home page
def index(request):
    return render(request, 'attendence/student_dashbord.html')
student=False
# Function to recognize the face and mark the attendance if face recognizes
def attendance_recognition(request):
    Simp_F_R = SimpleFacerec()
    path = 'media'
    # Take Function to load the images from Simple_Face_Rec File
    Simp_F_R.load_encoding_images(path)
    # Function to mark the attendance
    def MarkAttendance(name):
        with open('attendence/Attendance.csv','r+') as f:
            DataList = f.readlines()
            List_Name = []
            for l in DataList:
                entry = l.split(',')
                List_Name.append(entry[0])
            if name not in List_Name:
                status = datetime.datetime.now()
                dateStatus = date.today()
                dtstr = status.strftime('%H:%M:%S')
                datestr = dateStatus.strftime("%d/%m/%Y")
                nearby_devices = discover_devices(lookup_names = True)
                for fname,addr in nearby_devices:
                    uin_blutooth.append(addr)
                print(uin_blutooth)
                if name in uin_blutooth:
                    f.writelines(f'\n{name},{dtstr},{datestr}')
                    print("present")
                    student=True
                else:
                    print("not present")
                    student=False
    uin_blutooth.clear()
                    

    # Start to take the video Picture
    cap = cv.VideoCapture(0)

    while(True):
        success, frame = cap.read()
        ## Detection of Faces
        Face_Locations , Names = Simp_F_R.detect_known_faces(frame)
        for F_L, F_N in zip(Face_Locations, Names):
            top, left, bottom, right = F_L[0], F_L[1], F_L[2], F_L[3]
            # print("top: ", top, "left: ", left, "bottom: ", bottom, "right: ", right)
            # To show the rectangle on image
            cv.rectangle(frame, (top,left), (bottom,right),(0,0,200),4) 
            if F_N != 'Unknown':
                MarkAttendance(F_N)
            # else:
            #     messages.error(request , "User is not added in the Database")
            #     return redirect(request, 'index')
            # To show the text on image
            cv.putText(frame,F_N,(top,left-10),cv.FONT_HERSHEY_SIMPLEX,1,(0,0,0),2)
        cv.imshow("Frame", frame)

        key = cv.waitKey(10)
        if (key == 27):
            break
    cap.release()
    cv.destroyAllWindows()

# Converting CSV File into HTMl File to view the attendance by user
def view_attendance(request):
    
    # Read the CSV File
    read_file = pd.read_csv("attendence/Attendance.csv")

    # Convert into HTMl
    data_html=read_file.to_html()
    context = {'loaded_data': data_html}
    return render(request, "attendence/view_attendance.html", context)

def addstudent(request):
    title = request.POST['title']
    newStudent = newStudent(subject_id=1, name='Physics', max_marks=100)
    newStudent.save()