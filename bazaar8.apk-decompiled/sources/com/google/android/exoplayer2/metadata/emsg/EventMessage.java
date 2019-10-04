package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;

public final class EventMessage implements Metadata.Entry {
    public static final Parcelable.Creator<EventMessage> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final String f12595a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12596b;

    /* renamed from: c  reason: collision with root package name */
    public final long f12597c;

    /* renamed from: d  reason: collision with root package name */
    public final long f12598d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f12599e;

    /* renamed from: f  reason: collision with root package name */
    public int f12600f;

    public EventMessage(String str, String str2, long j2, long j3, byte[] bArr) {
        this.f12595a = str;
        this.f12596b = str2;
        this.f12597c = j2;
        this.f12598d = j3;
        this.f12599e = bArr;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || EventMessage.class != obj.getClass()) {
            return false;
        }
        EventMessage eventMessage = (EventMessage) obj;
        if (this.f12597c != eventMessage.f12597c || this.f12598d != eventMessage.f12598d || !I.a((Object) this.f12595a, (Object) eventMessage.f12595a) || !I.a((Object) this.f12596b, (Object) eventMessage.f12596b) || !Arrays.equals(this.f12599e, eventMessage.f12599e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f12600f == 0) {
            String str = this.f12595a;
            int i2 = 0;
            int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f12596b;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            long j2 = this.f12597c;
            long j3 = this.f12598d;
            this.f12600f = ((((((hashCode + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + Arrays.hashCode(this.f12599e);
        }
        return this.f12600f;
    }

    public String toString() {
        return "EMSG: scheme=" + this.f12595a + ", id=" + this.f12598d + ", value=" + this.f12596b;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12595a);
        parcel.writeString(this.f12596b);
        parcel.writeLong(this.f12597c);
        parcel.writeLong(this.f12598d);
        parcel.writeByteArray(this.f12599e);
    }

    public EventMessage(Parcel parcel) {
        String readString = parcel.readString();
        I.a(readString);
        this.f12595a = readString;
        String readString2 = parcel.readString();
        I.a(readString2);
        this.f12596b = readString2;
        this.f12597c = parcel.readLong();
        this.f12598d = parcel.readLong();
        byte[] createByteArray = parcel.createByteArray();
        I.a(createByteArray);
        this.f12599e = createByteArray;
    }
}
