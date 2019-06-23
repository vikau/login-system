from tkinter import *
import tkinter as ttk



def register_user():
    
    username_info = username.get()
    password_info = password.get()

    file=open(username_info+".txt","w")
    file.write(username_info+"\n")
    file.write(password_info)
    file.close()

    username_entry.delete(0, END)
    password_entry.delete(0, END)

    Label(root1, text = "Registration sucess",fg = "green", font =("calibri",11)).pack()


    
def register():
    global root1
    root1 = Toplevel(root)
    root1.title("Register")
    root1.geometry("300x250")
    
    global username
    global password
    global username_entry
    global password_entry
    username =StringVar()
    password =StringVar()


    Label (root1, text ="please enter detail below").pack()
    Label (root1, text = "").pack()
    Label (root1, text = "Username * ").pack()
    username_entry = Entry(root1, textvariable = username)
    username_entry.pack()
    Label (root1, text ="password * " ).pack()
    password_entry = Entry(root1, textvariable = username)
    password_entry.pack()
    Label(root1, text = "").pack()
    Button(root1, text = "Register", width = 10, height = 1, command = register_user).pack()
    
   
def login():
    print("Login session started")

    
def main_root():
    global root
    root=Tk()
    root.title("Tk dropdown example")

    root.geometry("300x250")
    root.title("Notes 1.0")
    Label(text = "Notes 1.0", bg = "grey", width = "300", height ="2", font = ("calibri",13)).pack()
    Label(text = "").pack()
    Button(text = "Login", height = "2", width = "30", command = login).pack()
    Label(text = "").pack()
    Button(text = "Register", height ="2", width = "30", command = register).pack()

    root.mainloop()

main_root()


    
