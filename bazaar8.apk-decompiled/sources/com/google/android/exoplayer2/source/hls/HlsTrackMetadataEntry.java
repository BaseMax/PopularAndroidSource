package com.google.android.exoplayer2.source.hls;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class HlsTrackMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<HlsTrackMetadataEntry> CREATOR = new p();

    /* renamed from: a  reason: collision with root package name */
    public final String f12721a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12722b;

    /* renamed from: c  reason: collision with root package name */
    public final List<VariantInfo> f12723c;

    public static final class VariantInfo implements Parcelable {
        public static final Parcelable.Creator<VariantInfo> CREATOR = new q();

        /* renamed from: a  reason: collision with root package name */
        public final long f12724a;

        /* renamed from: b  reason: collision with root package name */
        public final String f12725b;

        /* renamed from: c  reason: collision with root package name */
        public final String f12726c;

        /* renamed from: d  reason: collision with root package name */
        public final String f12727d;

        /* renamed from: e  reason: collision with root package name */
        public final String f12728e;

        public VariantInfo(long j2, String str, String str2, String str3, String str4) {
            this.f12724a = j2;
            this.f12725b = str;
            this.f12726c = str2;
            this.f12727d = str3;
            this.f12728e = str4;
        }

        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || VariantInfo.class != obj.getClass()) {
                return false;
            }
            VariantInfo variantInfo = (VariantInfo) obj;
            if (this.f12724a != variantInfo.f12724a || !TextUtils.equals(this.f12725b, variantInfo.f12725b) || !TextUtils.equals(this.f12726c, variantInfo.f12726c) || !TextUtils.equals(this.f12727d, variantInfo.f12727d) || !TextUtils.equals(this.f12728e, variantInfo.f12728e)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            long j2 = this.f12724a;
            int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
            String str = this.f12725b;
            int i3 = 0;
            int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f12726c;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f12727d;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.f12728e;
            if (str4 != null) {
                i3 = str4.hashCode();
            }
            return hashCode3 + i3;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.f12724a);
            parcel.writeString(this.f12725b);
            parcel.writeString(this.f12726c);
            parcel.writeString(this.f12727d);
            parcel.writeString(this.f12728e);
        }

        public VariantInfo(Parcel parcel) {
            this.f12724a = parcel.readLong();
            this.f12725b = parcel.readString();
            this.f12726c = parcel.readString();
            this.f12727d = parcel.readString();
            this.f12728e = parcel.readString();
        }
    }

    public HlsTrackMetadataEntry(String str, String str2, List<VariantInfo> list) {
        this.f12721a = str;
        this.f12722b = str2;
        this.f12723c = Collections.unmodifiableList(new ArrayList(list));
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || HlsTrackMetadataEntry.class != obj.getClass()) {
            return false;
        }
        HlsTrackMetadataEntry hlsTrackMetadataEntry = (HlsTrackMetadataEntry) obj;
        if (!TextUtils.equals(this.f12721a, hlsTrackMetadataEntry.f12721a) || !TextUtils.equals(this.f12722b, hlsTrackMetadataEntry.f12722b) || !this.f12723c.equals(hlsTrackMetadataEntry.f12723c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f12721a;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f12722b;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((hashCode + i2) * 31) + this.f12723c.hashCode();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12721a);
        parcel.writeString(this.f12722b);
        int size = this.f12723c.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeParcelable(this.f12723c.get(i3), 0);
        }
    }

    public HlsTrackMetadataEntry(Parcel parcel) {
        this.f12721a = parcel.readString();
        this.f12722b = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(parcel.readParcelable(VariantInfo.class.getClassLoader()));
        }
        this.f12723c = Collections.unmodifiableList(arrayList);
    }
}
