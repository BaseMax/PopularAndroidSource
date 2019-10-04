package com.google.android.exoplayer2.extractor.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;

public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR = new i();

    /* renamed from: a  reason: collision with root package name */
    public final String f12573a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f12574b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12575c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12576d;

    public /* synthetic */ MdtaMetadataEntry(Parcel parcel, i iVar) {
        this(parcel);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || MdtaMetadataEntry.class != obj.getClass()) {
            return false;
        }
        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) obj;
        if (!this.f12573a.equals(mdtaMetadataEntry.f12573a) || !Arrays.equals(this.f12574b, mdtaMetadataEntry.f12574b) || this.f12575c != mdtaMetadataEntry.f12575c || this.f12576d != mdtaMetadataEntry.f12576d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((527 + this.f12573a.hashCode()) * 31) + Arrays.hashCode(this.f12574b)) * 31) + this.f12575c) * 31) + this.f12576d;
    }

    public String toString() {
        return "mdta: key=" + this.f12573a;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12573a);
        parcel.writeInt(this.f12574b.length);
        parcel.writeByteArray(this.f12574b);
        parcel.writeInt(this.f12575c);
        parcel.writeInt(this.f12576d);
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i2, int i3) {
        this.f12573a = str;
        this.f12574b = bArr;
        this.f12575c = i2;
        this.f12576d = i3;
    }

    public MdtaMetadataEntry(Parcel parcel) {
        String readString = parcel.readString();
        I.a(readString);
        this.f12573a = readString;
        this.f12574b = new byte[parcel.readInt()];
        parcel.readByteArray(this.f12574b);
        this.f12575c = parcel.readInt();
        this.f12576d = parcel.readInt();
    }
}
