# ----------------------
# usersController.nim
# ----------------------

proc userIndex*() = 
  var user = User.getOne parseInt(:"id")
  render("users/index.html", user) #


proc registerView*() = 
  #form view here 
  discard

proc registerLogic*() =
  #form logic here
  discard

proc loginUser*() = 
  # Login proc, sessions and cookies.
  discard

proc editUser*() = 
  #form view again
  #pass put or patch request and add current values in the fields
  discard

proc putUser*() = 
  discard

proc deleteUser*() = 
  var user = User.getOne parseInt(:"id")
  user.delete()