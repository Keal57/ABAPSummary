@EndUserText.label: 'Travel'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZKU_C_Travel
  provider contract transactional_query
  as projection on ZKU_R_Travel
{
  key TravelUuid,
      TravelId,
      @Consumption.valueHelpDefinition: [{ entity: { name: '/DMO/I_Agency_StdVH', element: 'AgencyID' } }]
      AgencyId,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZKU_I_CustomerVH', element: 'CustomerId' } }]
      CustomerId,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_CurrencyStdVH', element: 'Currency' } }]
      CurrencyCode,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Description,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZKU_I_StatusVH', element: 'Status' } }]
      Status,

      /* Administrative Data */
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      
      /* Transient Data */
      CustomerName,
      BeginDateCriticality,
      StatusCriticality,
      
      /* Associations */
      _Bookings : redirected to composition child ZKU_C_Booking
}
