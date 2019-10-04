package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;

public final class CommentFrame extends Id3Frame {
    public static final Parcelable.Creator<CommentFrame> CREATOR = new f();

    /* renamed from: b  reason: collision with root package name */
    public final String f12625b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12626c;

    /* renamed from: d  reason: collision with root package name */
    public final String f12627d;

    public CommentFrame(String str, String str2, String str3) {
        super("COMM");
        this.f12625b = str;
        this.f12626c = str2;
        this.f12627d = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || CommentFrame.class != obj.getClass()) {
            return false;
        }
        CommentFrame commentFrame = (CommentFrame) obj;
        if (!I.a((Object) this.f12626c, (Object) commentFrame.f12626c) || !I.a((Object) this.f12625b, (Object) commentFrame.f12625b) || !I.a((Object) this.f12627d, (Object) commentFrame.f12627d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f12625b;
        int i2 = 0;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f12626c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f12627d;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return this.f12632a + ": language=" + this.f12625b + ", description=" + this.f12626c;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12632a);
        parcel.writeString(this.f12625b);
        parcel.writeString(this.f12627d);
    }

    public CommentFrame(Parcel parcel) {
        super("COMM");
        String readString = parcel.readString();
        I.a(readString);
        this.f12625b = readString;
        String readString2 = parcel.readString();
        I.a(readString2);
        this.f12626c = readString2;
        String readString3 = parcel.readString();
        I.a(readString3);
        this.f12627d = readString3;
    }
}
