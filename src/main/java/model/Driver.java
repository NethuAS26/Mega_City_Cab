//package model;
//
//
//import javax.persistence.*;
//
//@Entity
//@Table(name = "drivers")
//public class Driver {
//    
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private Long id;
//    
//    private String name;
//    private String licenseNumber;
//    
//    // Constructors, getters, setters
//    public Driver() {}
//    
//    public Driver(String name, String licenseNumber) {
//        this.name = name;
//        this.licenseNumber = licenseNumber;
//    }
//    
//    public Long getId() { return id; }
//    public void setId(Long id) { this.id = id; }
//    
//    public String getName() { return name; }
//    public void setName(String name) { this.name = name; }
//    
//    public String getLicenseNumber() { return licenseNumber; }
//    public void setLicenseNumber(String licenseNumber) { this.licenseNumber = licenseNumber; }
//}
