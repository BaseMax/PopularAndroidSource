package com.mapbox.android.telemetry;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;
import com.mapbox.android.telemetry.Event;
import java.util.ArrayList;
import java.util.List;

public class Attachment extends Event implements Parcelable {
    public static final Parcelable.Creator<Attachment> CREATOR = new Parcelable.Creator<Attachment>() {
        public final Attachment createFromParcel(Parcel parcel) {
            return new Attachment(parcel);
        }

        public final Attachment[] newArray(int i) {
            return new Attachment[i];
        }
    };
    @c("event")

    /* renamed from: a  reason: collision with root package name */
    private final String f4919a;
    @c("files")

    /* renamed from: b  reason: collision with root package name */
    private List<s> f4920b;

    public int describeContents() {
        return 0;
    }

    Attachment() {
        this.f4919a = "vis.attachment";
        this.f4920b = new ArrayList();
    }

    protected Attachment(Parcel parcel) {
        this.f4919a = parcel.readString();
    }

    public List<s> getAttachments() {
        return this.f4920b;
    }

    public void addAttachment(s sVar) {
        this.f4920b.add(sVar);
    }

    /* access modifiers changed from: package-private */
    public Event.Type obtainType() {
        return Event.Type.VIS_ATTACHMENT;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4919a);
    }
}
