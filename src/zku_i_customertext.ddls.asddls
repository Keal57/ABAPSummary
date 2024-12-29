@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Text'
define view entity ZKU_I_CustomerText
as select from /dmo/customer
{
  key customer_id                                 as CustomerId,
      first_name                                  as FirstName,
      last_name                                   as LastName,

      /* Transient Data */
      concat_with_space(first_name, last_name, 1) as Name

}
