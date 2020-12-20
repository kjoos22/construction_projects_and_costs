#create database seeds here
#class.create(attribute: value, etc.)

Project.create(estimate_number: "E2101", project_title: "Test Project 1",
    address: "123 Main St", city: "New York", state_abbrv: "NY", zip: "12345",
    no_site: "N")

Project.create(estimate_number: "E2102", project_title: "Test Project 2",
    address: "321 Main St", city: "Queens", state_abbrv: "NY", zip: "11325",
    no_site: "N")

Project.create(estimate_number: "E2103", project_title: "Test Project 3",
    address: "123 Side St", city: "Brooklyn", state_abbrv: "NY", zip: "32145",
    no_site: "N")

Project.create(estimate_number: "E2104", project_title: "Test Project 4",
    address: "100 Busy St", city: "Bronx", state_abbrv: "NY", zip: "54321",
    no_site: "N")

Project.create(estimate_number: "E2105", project_title: "Test Project 5",
    address: "18 Business Rd", city: "Staten Island", state_abbrv: "NY",
    zip: "10002", no_site: "N")