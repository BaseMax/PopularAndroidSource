package com.mapbox.mapboxsdk.module.telemetry;

import android.os.Parcel;

public class OfflineDownloadEndEvent extends MapBaseEvent {
    private static final String EVENT_NAME = "map.offlineDownload.end";
    private final Double maxZoom;
    private final Double minZoom;
    private long numberOfTilesCompleted;
    private final String shapeForOfflineRegion;
    private long sizeOfResourcesCompleted;
    private String state;
    private String styleURL;

    /* access modifiers changed from: package-private */
    public String getEventName() {
        return EVENT_NAME;
    }

    public /* bridge */ /* synthetic */ int describeContents() {
        return super.describeContents();
    }

    public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    OfflineDownloadEndEvent(PhoneState phoneState, String str, Double d, Double d2) {
        super(phoneState);
        this.shapeForOfflineRegion = str;
        this.minZoom = d;
        this.maxZoom = d2;
    }

    /* access modifiers changed from: package-private */
    public Double getMinZoom() {
        return this.minZoom;
    }

    /* access modifiers changed from: package-private */
    public Double getMaxZoom() {
        return this.maxZoom;
    }

    /* access modifiers changed from: package-private */
    public String getShapeForOfflineRegion() {
        return this.shapeForOfflineRegion;
    }

    /* access modifiers changed from: package-private */
    public String getStyleURL() {
        return this.styleURL;
    }

    /* access modifiers changed from: package-private */
    public void setStyleURL(String str) {
        this.styleURL = str;
    }

    /* access modifiers changed from: package-private */
    public long getSizeOfResourcesCompleted() {
        return this.sizeOfResourcesCompleted;
    }

    /* access modifiers changed from: package-private */
    public void setSizeOfResourcesCompleted(long j) {
        this.sizeOfResourcesCompleted = j;
    }

    /* access modifiers changed from: package-private */
    public long getNumberOfTilesCompleted() {
        return this.numberOfTilesCompleted;
    }

    /* access modifiers changed from: package-private */
    public void setNumberOfTilesCompleted(long j) {
        this.numberOfTilesCompleted = j;
    }

    /* access modifiers changed from: package-private */
    public String getState() {
        return this.state;
    }

    /* access modifiers changed from: package-private */
    public void setState(int i) {
        this.state = String.valueOf(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            OfflineDownloadEndEvent offlineDownloadEndEvent = (OfflineDownloadEndEvent) obj;
            if (this.sizeOfResourcesCompleted != offlineDownloadEndEvent.sizeOfResourcesCompleted || this.numberOfTilesCompleted != offlineDownloadEndEvent.numberOfTilesCompleted) {
                return false;
            }
            Double d = this.minZoom;
            if (d == null ? offlineDownloadEndEvent.minZoom != null : !d.equals(offlineDownloadEndEvent.minZoom)) {
                return false;
            }
            Double d2 = this.maxZoom;
            if (d2 == null ? offlineDownloadEndEvent.maxZoom != null : !d2.equals(offlineDownloadEndEvent.maxZoom)) {
                return false;
            }
            String str = this.shapeForOfflineRegion;
            if (str == null ? offlineDownloadEndEvent.shapeForOfflineRegion != null : !str.equals(offlineDownloadEndEvent.shapeForOfflineRegion)) {
                return false;
            }
            String str2 = this.styleURL;
            if (str2 == null ? offlineDownloadEndEvent.styleURL != null : !str2.equals(offlineDownloadEndEvent.styleURL)) {
                return false;
            }
            String str3 = this.state;
            String str4 = offlineDownloadEndEvent.state;
            if (str3 != null) {
                return str3.equals(str4);
            }
            if (str4 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        Double d = this.minZoom;
        int i = 0;
        int hashCode = (d != null ? d.hashCode() : 0) * 31;
        Double d2 = this.maxZoom;
        int hashCode2 = (hashCode + (d2 != null ? d2.hashCode() : 0)) * 31;
        String str = this.shapeForOfflineRegion;
        int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.styleURL;
        int hashCode4 = (hashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.state;
        if (str3 != null) {
            i = str3.hashCode();
        }
        long j = this.sizeOfResourcesCompleted;
        long j2 = this.numberOfTilesCompleted;
        return ((((hashCode4 + i) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "OfflineDownloadEndEvent{, minZoom=" + this.minZoom + ", maxZoom=" + this.maxZoom + ", shapeForOfflineRegion='" + this.shapeForOfflineRegion + '\'' + ", styleURL='" + this.styleURL + '\'' + ", sizeOfResourcesCompleted=" + this.sizeOfResourcesCompleted + ", numberOfTilesCompleted=" + this.numberOfTilesCompleted + ", state=" + this.state + '}';
    }
}
