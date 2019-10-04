package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;

public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new l();

    /* renamed from: b  reason: collision with root package name */
    public final String f12643b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12644c;

    public TextInformationFrame(String str, String str2, String str3) {
        super(str);
        this.f12643b = str2;
        this.f12644c = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || TextInformationFrame.class != obj.getClass()) {
            return false;
        }
        TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
        if (!this.f12632a.equals(textInformationFrame.f12632a) || !I.a((Object) this.f12643b, (Object) textInformationFrame.f12643b) || !I.a((Object) this.f12644c, (Object) textInformationFrame.f12644c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = (527 + this.f12632a.hashCode()) * 31;
        String str = this.f12643b;
        int i2 = 0;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f12644c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return this.f12632a + ": value=" + this.f12644c;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12632a);
        parcel.writeString(this.f12643b);
        parcel.writeString(this.f12644c);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public TextInformationFrame(android.os.Parcel r2) {
        /*
            r1 = this;
            java.lang.String r0 = r2.readString()
            c.e.a.a.o.I.a(r0)
            java.lang.String r0 = (java.lang.String) r0
            r1.<init>(r0)
            java.lang.String r0 = r2.readString()
            r1.f12643b = r0
            java.lang.String r2 = r2.readString()
            c.e.a.a.o.I.a(r2)
            java.lang.String r2 = (java.lang.String) r2
            r1.f12644c = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.TextInformationFrame.<init>(android.os.Parcel):void");
    }
}
