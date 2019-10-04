package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class CedarMapData {
    @c("client_id")
    private String clientId;
    @c("client_secret")
    private String clientSecret;
    @c("map_id")
    private String mapId;
    @c("uri")
    private String uri;

    public String getUri() {
        return this.uri;
    }

    public void setUri(String str) {
        this.uri = str;
    }

    public String getMapId() {
        return this.mapId;
    }

    public void setMapId(String str) {
        this.mapId = str;
    }

    public String getClientId() {
        return this.clientId;
    }

    public void setClientId(String str) {
        this.clientId = str;
    }

    public String getClientSecret() {
        return this.clientSecret;
    }

    public void setClientSecret(String str) {
        this.clientSecret = str;
    }

    public String toString() {
        return "CedarMapData{uri='" + this.uri + '\'' + ", mapId='" + this.mapId + '\'' + ", clientId='" + this.clientId + '\'' + ", clientSecret='" + this.clientSecret + '\'' + '}';
    }
}
