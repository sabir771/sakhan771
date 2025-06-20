namespace my.bookshop;

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
}

entity MCREGION {
  key MCREGIONID          : String;
      SORTORDER           : Integer;
      TXT                 : String null;
      DELETED             : String null;
    //   MCPARENTREGIONID    : Association to MCREGION;
}

entity DEPARTMENT {
  key DEPARTMENT_ID       : String;
      DEPARTMENT_NAME     : String;
}
 
entity EMPLOYEE {
  key EMPLOYEE_ID         : String; 
      FIRST_NAME          : String; 
      DEPARTMENT_ID       : Association to DEPARTMENT;
      DEPARTMENT_SUBID    : String;
      DELETED             : String null;
}