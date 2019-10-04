package cab.snapp.passenger.data.models;

public class GeoCodeModel {
    private String address;
    private String id;
    private PlaceLatLng latLng;
    private String name;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public PlaceLatLng getLatLng() {
        return this.latLng;
    }

    public void setLatLng(PlaceLatLng placeLatLng) {
        this.latLng = placeLatLng;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String toString() {
        return "GeoCodeModel{id='" + this.id + '\'' + ", address='" + this.address + '\'' + ", latLng=" + this.latLng + ", name='" + this.name + '\'' + '}';
    }
}
