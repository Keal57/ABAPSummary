@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking'
define view entity ZKU_R_Booking
  as select from zku_booking_a
  association to parent ZKU_R_Travel as _Travel on $projection.TravelUuid = _Travel.TravelUuid
{
  key booking_uuid  as BookingUuid,
      travel_uuid   as TravelUuid,
      booking_id    as BookingId,
      booking_date  as BookingDate,
      carrier_id    as CarrierId,
      connection_id as ConnectionId,
      flight_date   as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price  as FlightPrice,
      currency_code as CurrencyCode,

      /* Associations */
      _Travel
}
