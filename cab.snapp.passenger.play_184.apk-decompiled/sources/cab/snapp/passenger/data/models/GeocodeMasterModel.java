package cab.snapp.passenger.data.models;

import cab.snapp.passenger.data_access_layer.network.responses.CachedPlaceResponse;
import com.google.gson.a.c;

public class GeocodeMasterModel {
    @c("address")
    private String address;
    @c("distance")
    private int distance;
    @c("id")
    private String id;
    @c("location")
    private PlaceLatLng latLng;
    @c("name")
    private String name;
    @c("name_en")
    private String name_en;
    @c("type")
    private String type;

    public static GeocodeMasterModel from(CedarGeocodeResult cedarGeocodeResult) {
        if (cedarGeocodeResult == null) {
            return createNullModel();
        }
        GeocodeMasterModel geocodeMasterModel = new GeocodeMasterModel();
        geocodeMasterModel.id = cedarGeocodeResult.getId();
        geocodeMasterModel.name = cedarGeocodeResult.getName();
        geocodeMasterModel.address = cedarGeocodeResult.getAddress();
        geocodeMasterModel.name_en = cedarGeocodeResult.getName_en();
        geocodeMasterModel.type = cedarGeocodeResult.getType();
        geocodeMasterModel.distance = -1;
        if (cedarGeocodeResult.getCedarLocation() != null) {
            geocodeMasterModel.latLng = new PlaceLatLng(cedarGeocodeResult.getCedarLocation().getLatitude().doubleValue(), cedarGeocodeResult.getCedarLocation().getLongitude().doubleValue());
        }
        return geocodeMasterModel;
    }

    public static GeocodeMasterModel from(PlaceDetail placeDetail) {
        if (placeDetail == null) {
            return createNullModel();
        }
        GeocodeMasterModel geocodeMasterModel = new GeocodeMasterModel();
        geocodeMasterModel.id = placeDetail.getPlaceId();
        geocodeMasterModel.name = placeDetail.getName();
        geocodeMasterModel.address = placeDetail.getAddress();
        if (!(placeDetail.getGeometry() == null || placeDetail.getGeometry().getLocation() == null)) {
            PlaceDetailLocation location = placeDetail.getGeometry().getLocation();
            geocodeMasterModel.latLng = new PlaceLatLng(location.getLatitude(), location.getLongitude());
        }
        geocodeMasterModel.type = "";
        geocodeMasterModel.distance = -1;
        geocodeMasterModel.name_en = "";
        return geocodeMasterModel;
    }

    public static GeocodeMasterModel from(FavoriteModel favoriteModel) {
        if (favoriteModel == null) {
            return createNullModel();
        }
        GeocodeMasterModel geocodeMasterModel = new GeocodeMasterModel();
        geocodeMasterModel.id = "";
        if (favoriteModel.getFormattedAddress() == null || favoriteModel.getFormattedAddress().getFormattedAddress() == null) {
            geocodeMasterModel.address = "";
        } else {
            geocodeMasterModel.address = favoriteModel.getFormattedAddress().getFormattedAddress();
        }
        geocodeMasterModel.name = String.valueOf(favoriteModel.getName());
        if (favoriteModel.getFormattedAddress() != null) {
            geocodeMasterModel.latLng = new PlaceLatLng(favoriteModel.getFormattedAddress().getLat(), favoriteModel.getFormattedAddress().getLng());
        }
        geocodeMasterModel.type = "";
        geocodeMasterModel.distance = -1;
        geocodeMasterModel.name_en = "";
        return geocodeMasterModel;
    }

    public static GeocodeMasterModel from(CachedPlaceResponse cachedPlaceResponse) {
        if (cachedPlaceResponse == null) {
            return createNullModel();
        }
        GeocodeMasterModel geocodeMasterModel = new GeocodeMasterModel();
        geocodeMasterModel.id = cachedPlaceResponse.getId();
        geocodeMasterModel.address = cachedPlaceResponse.getAddress();
        if (cachedPlaceResponse.getLatLng() != null) {
            geocodeMasterModel.latLng = new PlaceLatLng(cachedPlaceResponse.getLatLng().getLatitude(), cachedPlaceResponse.getLatLng().getLongitude());
        }
        geocodeMasterModel.type = "";
        geocodeMasterModel.distance = -1;
        geocodeMasterModel.name_en = "";
        return geocodeMasterModel;
    }

    public static GeocodeMasterModel from(AutocompletePrediction autocompletePrediction) {
        if (autocompletePrediction == null) {
            return createNullModel();
        }
        GeocodeMasterModel geocodeMasterModel = new GeocodeMasterModel();
        geocodeMasterModel.id = autocompletePrediction.getPlaceId();
        geocodeMasterModel.address = autocompletePrediction.getStructuredFormatting().getSecondaryText();
        if (autocompletePrediction.getName() == null || autocompletePrediction.getName().isEmpty()) {
            geocodeMasterModel.name = autocompletePrediction.getStructuredFormatting().getPrimaryText();
        } else {
            geocodeMasterModel.name = autocompletePrediction.getName();
        }
        if (autocompletePrediction.getLatLng() != null) {
            geocodeMasterModel.latLng = new PlaceLatLng(autocompletePrediction.getLatLng().getLatitude(), autocompletePrediction.getLatLng().getLongitude());
        }
        geocodeMasterModel.type = autocompletePrediction.getType();
        geocodeMasterModel.distance = autocompletePrediction.getDistance();
        geocodeMasterModel.name_en = "";
        return geocodeMasterModel;
    }

    private static GeocodeMasterModel createNullModel() {
        GeocodeMasterModel geocodeMasterModel = new GeocodeMasterModel();
        geocodeMasterModel.name = "";
        geocodeMasterModel.name_en = "";
        geocodeMasterModel.address = "";
        geocodeMasterModel.latLng = null;
        geocodeMasterModel.id = "";
        geocodeMasterModel.type = "";
        geocodeMasterModel.distance = -1;
        return geocodeMasterModel;
    }

    public static GeocodeMasterModel from(GeocodeMasterModel geocodeMasterModel) {
        GeocodeMasterModel geocodeMasterModel2 = new GeocodeMasterModel();
        geocodeMasterModel2.id = geocodeMasterModel.id;
        geocodeMasterModel2.latLng = geocodeMasterModel.latLng;
        geocodeMasterModel2.name = geocodeMasterModel.name;
        geocodeMasterModel2.type = geocodeMasterModel.type;
        geocodeMasterModel2.address = geocodeMasterModel.address;
        geocodeMasterModel2.name_en = geocodeMasterModel.name_en;
        geocodeMasterModel2.distance = geocodeMasterModel.distance;
        return geocodeMasterModel2;
    }

    public boolean hasLatLng() {
        PlaceLatLng placeLatLng = this.latLng;
        return (placeLatLng == null || (placeLatLng.getLatitude() == 0.0d && this.latLng.getLongitude() == 0.0d)) ? false : true;
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

    public PlaceLatLng getLatLng() {
        PlaceLatLng placeLatLng = this.latLng;
        return placeLatLng == null ? new PlaceLatLng(0.0d, 0.0d) : placeLatLng;
    }

    public void setLatLng(PlaceLatLng placeLatLng) {
        this.latLng = placeLatLng;
    }

    public String getName_en() {
        return this.name_en;
    }

    public void setName_en(String str) {
        this.name_en = str;
    }

    public int getDistance() {
        return this.distance;
    }

    public void setDistance(int i) {
        this.distance = i;
    }

    public String toString() {
        return "GeocodeMasterModel{id='" + this.id + '\'' + ", name='" + this.name + '\'' + ", address='" + this.address + '\'' + ", latLng=" + this.latLng + ", name_en='" + this.name_en + '\'' + ", type='" + this.type + '\'' + ", distance=" + this.distance + '}';
    }
}
