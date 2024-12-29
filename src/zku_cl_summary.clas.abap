CLASS zku_cl_summary DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zku_cl_summary IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    "out->write( 'Hello, World!' ). " Hello, World! Output.

    DATA text TYPE c LENGTH 25. " Declaration
    text = 'Was geht ab!'. " Assignment
    "out->write( text ). " Output

    DATA datum TYPE d.
    datum = '20221220'.
    "out->write( datum ).

    DATA carrier_id TYPE /dmo/carrier_id.
    carrier_id = 'LH'.
    "out->write( carrier_id ).
    carrier_id = 'AF'.
    "out->write( carrier_id ).
    CLEAR carrier_id.
    "out->write( carrier_id ).

    DATA(connection_id) = '0400'.
    "out->write( connection_id ).

    DATA flight_date TYPE /dmo/flight_date VALUE '20230101'.
    "out->write( flight_date ).

    constants lh_carrier_id type /dmo/carrier_id value 'LH'.
    "out->write( lh_carrier_id ).

  ENDMETHOD.

ENDCLASS.
