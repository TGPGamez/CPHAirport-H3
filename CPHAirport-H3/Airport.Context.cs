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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CPHAirportDBEntities1 : DbContext
    {
        public CPHAirportDBEntities1()
            : base("name=CPHAirportDBEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Airline> Airlines { get; set; }
        public virtual DbSet<Airport> Airports { get; set; }
        public virtual DbSet<Flight_Route> Flight_Route { get; set; }
        public virtual DbSet<FlightRoute_Airline_Operates> FlightRoute_Airline_Operates { get; set; }
        public virtual DbSet<FlightRoute_Airline_Owns> FlightRoute_Airline_Owns { get; set; }
    }
}
