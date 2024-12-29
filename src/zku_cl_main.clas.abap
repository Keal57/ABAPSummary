CLASS zku_cl_main DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zku_cl_main IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    out->write( 'Hello, World!' ).
  ENDMETHOD.
ENDCLASS.
