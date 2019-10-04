package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class CedarGeocodeResult {
    @c("address")
    private String address;
    @c("location")
    private CedarLocation cedarLocation;
    @c("id")
    private String id;
    @c("name")
    private String name;
    @c("name_en")
    private String name_en;
    @c("type")
    private String type;

    public CedarLocation getCedarLocation() {
        return this.cedarLocation;
    }

    public void setCedarLocation(CedarLocation cedarLocation2) {
        this.cedarLocation = cedarLocation2;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getName_en() {
        return this.name_en;
    }

    public void setName_en(String str) {
        this.name_en = str;
    }

    public String toString() {
        return "CedarGeocodeResult{id='" + this.id + '\'' + ", name='" + this.name + '\'' + ", address='" + this.address + '\'' + ", cedarLocation=" + this.cedarLocation + ", name_en='" + this.name_en + '\'' + ", type='" + this.type + '\'' + '}';
    }
}
