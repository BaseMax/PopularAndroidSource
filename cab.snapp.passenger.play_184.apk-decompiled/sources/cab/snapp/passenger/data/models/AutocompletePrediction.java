package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class AutocompletePrediction {
    @c("area_length")
    private long areaLength;
    @c("distance")
    private int distance;
    @c("description")
    private String fullAddress;
    @c("location")
    private PlaceLatLng latLng;
    @c("name")
    private String name;
    @c("place_id")
    private String placeId;
    @c("structured_formatting")
    private PredictionStructuredFormatting structuredFormatting;
    @c("type")
    private String type;

    public String getPlaceId() {
        return this.placeId;
    }

    public void setPlaceId(String str) {
        this.placeId = str;
    }

    public PredictionStructuredFormatting getStructuredFormatting() {
        return this.structuredFormatting;
    }

    public void setStructuredFormatting(PredictionStructuredFormatting predictionStructuredFormatting) {
        this.structuredFormatting = predictionStructuredFormatting;
    }

    public String getFullAddress() {
        return this.fullAddress;
    }

    public void setFullAddress(String str) {
        this.fullAddress = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public PlaceLatLng getLatLng() {
        return this.latLng;
    }

    public void setLatLng(PlaceLatLng placeLatLng) {
        this.latLng = placeLatLng;
    }

    public int getDistance() {
        return this.distance;
    }

    public void setDistance(int i) {
        this.distance = i;
    }

    public long getAreaLength() {
        return this.areaLength;
    }

    public void setAreaLength(long j) {
        this.areaLength = j;
    }

    public String toString() {
        return "AutocompletePrediction{placeId='" + this.placeId + '\'' + ", name='" + this.name + '\'' + ", structuredFormatting=" + this.structuredFormatting + ", fullAddress='" + this.fullAddress + '\'' + ", type='" + this.type + '\'' + ", latLng=" + this.latLng + ", distance=" + this.distance + ", areaLength=" + this.areaLength + '}';
    }
}
