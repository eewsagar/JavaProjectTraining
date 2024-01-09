# JavaProjectTraining
Workshop trained project

How to add new element:

1. Change script file 
  add one element "emailid varchar(255)"
2. Runsql
3. Check database-> localhost

view :-
4. AddContactFrame.java-> add new lable and textfield., Change lable by right click and edit text.
   double click on save button -> 
   add: String trim3 = jTextField3.getText().trim();  // getting value from ui
        contactDTO.setEmailid(trim3);  // set value in object.

DTO:-
5. ContactDTO.java-> add new private variable.
    private String emailid;
    right click on class and go in insertCode-> generate getter and setter. -> select it -> ok.

Service:-
6.ContactService
  add opertion:
change saveContact(ContactDTO dTO) method.
   insert query change, add dto.getEmailid().

update operation:
   same we do for updateContact(ContactDTO dTO, String id) method also.
   update query change, add dto.getEmailid().
   example: + "emailid = '" + dTO.getEmailid() + "',"

view operation:
searchOrListContact(String id, String mode)
add this line to add the view of new element
dTO.setEmailid(executeQuery.getString("emailid"));

7. ContactTableModel.java
 add coloumn name like :  "EMAIL ID"
 add coloumnclass : String.class,

add case to set the value in table:
case 3:
        return dTO.getEmailid(); 
