
from django.urls import path
from classroom import views
from rest_framework.urlpatterns import format_suffix_patterns
urlpatterns = [
    # path('notes', views.notes, name="notes"),
    # path('delete_note/<int:pk>', views.delete_note, name="delete-note"),
    # path('notes_detail/<int:pk>',
    #      views.NotesDetailView.as_view(), name="notes-detail"),
    # path('homework', views.homework, name="homework"),
    # path('update_homework/<int:pk>', views.update_homework, name="update-homework"),
    # path('delete_homework/<int:pk>', views.delete_homework, name="delete-homework"),
    # path('youtube', views.youtube, name="youtube"),
    # path('todo', views.todo, name="todo"),
    # path('update_todo/<int:pk>', views.update_todo, name="update-todo"),
    # path('delete_todo/<int:pk>', views.delete_todo, name="delete-todo"),
    
    
     path('note/', views.NoteList.as_view()),
    path('note/<int:pk>/', views.NoteDetail.as_view()),
     path('homework/', views.HomeworkList.as_view()),
    path('homework/<int:pk>/', views.HomeworkDetail.as_view()),
     path('todo/', views.TodoList.as_view()),
    path('todo/<int:pk>/', views.TodoDetail.as_view()),
]
urlpatterns = format_suffix_patterns(urlpatterns)