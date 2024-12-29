@EndUserText.label: 'Booking'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZKU_C_Booking
  as projection on ZKU_R_Booking
{
  key BookingUuid,
      TravelUuid,
      BookingId,      
      BookingDate,
      @Consumption.valueHelpDefinition: [{ entity: { name: '/DMO/I_Carrier_StdVH', element: 'AirlineId' } }]
      CarrierId,
      ConnectionId,
      FlightDate,
      FlightPrice,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_CurrencyStdVH', element: 'Currency' } }]
      CurrencyCode,

      /* Associations */
      _Travel : redirected to parent ZKU_C_Travel
}
