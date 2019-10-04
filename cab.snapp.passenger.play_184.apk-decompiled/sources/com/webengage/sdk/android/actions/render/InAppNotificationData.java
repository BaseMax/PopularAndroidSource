package com.webengage.sdk.android.actions.render;

import android.os.Parcel;
import android.os.Parcelable;
import org.a.b;
import org.a.c;

public class InAppNotificationData implements Parcelable {
    public static final Parcelable.Creator<InAppNotificationData> CREATOR = new Parcelable.Creator<InAppNotificationData>() {
        /* renamed from: a */
        public final InAppNotificationData createFromParcel(Parcel parcel) {
            return new InAppNotificationData(parcel);
        }

        /* renamed from: a */
        public final InAppNotificationData[] newArray(int i) {
            return new InAppNotificationData[i];
        }
    };
    private c data;
    private String experimentId;
    private InAppType inAppType;
    private String layoutId;
    private boolean render;
    private String variationId;

    public enum InAppType {
        BLOCKING,
        HEADER,
        FOOTER,
        MODAL
    }

    private InAppNotificationData(Parcel parcel) {
        boolean z = true;
        this.render = true;
        this.inAppType = null;
        try {
            this.data = new c(parcel.readString());
            this.experimentId = parcel.readString();
            this.layoutId = parcel.readString();
            this.variationId = parcel.readString();
            if (parcel.readByte() == 0) {
                z = false;
            }
            this.render = z;
            this.inAppType = (InAppType) parcel.readSerializable();
        } catch (Exception unused) {
        }
    }

    public InAppNotificationData(String str, String str2, String str3, String str4) {
        this.render = true;
        InAppType inAppType2 = null;
        this.inAppType = null;
        if (str == null || str4 == null || str2 == null || str3 == null) {
            throw new IllegalArgumentException("InApp:experimentId: " + str + " data: " + str4 + " variationId: " + str2 + " layoutId: " + str3);
        }
        c cVar = new c(str4);
        if (cVar.isNull("status")) {
            throw new IllegalArgumentException("status object not found in notification response");
        } else if (cVar.optJSONObject("status").optBoolean("success", false)) {
            this.data = cVar.optJSONObject("templateData");
            this.experimentId = str;
            this.variationId = str2;
            this.layoutId = str3;
            c jSONObject = this.data.getJSONObject("layoutAttributes");
            this.inAppType = !jSONObject.isNull("type") ? InAppType.valueOf(jSONObject.optString("type")) : inAppType2;
            if (this.inAppType == null) {
                throw new b("Notification Type is NUll");
            }
        } else {
            throw new IllegalArgumentException("success value found as false in notification response");
        }
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return this.experimentId.equals(((InAppNotificationData) obj).getExperimentId());
    }

    public c getData() {
        return this.data;
    }

    public String getExperimentId() {
        return this.experimentId;
    }

    /* access modifiers changed from: protected */
    public InAppType getInAppType() {
        return this.inAppType;
    }

    public String getLayoutId() {
        return this.layoutId;
    }

    public String getVariationId() {
        return this.variationId;
    }

    public int hashCode() {
        return this.experimentId.hashCode();
    }

    public void setNotificationData(c cVar) {
        this.data = cVar;
    }

    public void setShouldRender(boolean z) {
        this.render = z;
    }

    public boolean shouldRender() {
        return this.render;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String property = System.getProperty("line.separator");
        sb.append(getClass().getName() + " Object { " + property);
        StringBuilder sb2 = new StringBuilder(" Experiment Id : ");
        sb2.append(getExperimentId());
        sb2.append(property);
        sb.append(sb2.toString());
        sb.append(" Variation Id : " + getVariationId() + property);
        sb.append(" Data : " + getData().toString() + property);
        sb.append("}");
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.data.toString());
        parcel.writeString(this.experimentId);
        parcel.writeString(this.layoutId);
        parcel.writeString(this.variationId);
        parcel.writeByte(this.render ? (byte) 1 : 0);
        parcel.writeSerializable(this.inAppType);
    }
}
