//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CPHAirport_H3
{
    using System;
    using System.Collections.Generic;
    
    public partial class FlightRoute_Airline_Owns
    {
        public string AirlineIATA { get; set; }
        public int FlightID { get; set; }
    
        public virtual Airline Airline { get; set; }
    }
}
