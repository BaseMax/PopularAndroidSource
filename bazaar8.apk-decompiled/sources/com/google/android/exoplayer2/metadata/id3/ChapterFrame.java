package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import java.util.Arrays;

public final class ChapterFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterFrame> CREATOR = new d();

    /* renamed from: b  reason: collision with root package name */
    public final String f12614b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12615c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12616d;

    /* renamed from: e  reason: collision with root package name */
    public final long f12617e;

    /* renamed from: f  reason: collision with root package name */
    public final long f12618f;

    /* renamed from: g  reason: collision with root package name */
    public final Id3Frame[] f12619g;

    public ChapterFrame(String str, int i2, int i3, long j2, long j3, Id3Frame[] id3FrameArr) {
        super("CHAP");
        this.f12614b = str;
        this.f12615c = i2;
        this.f12616d = i3;
        this.f12617e = j2;
        this.f12618f = j3;
        this.f12619g = id3FrameArr;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ChapterFrame.class != obj.getClass()) {
            return false;
        }
        ChapterFrame chapterFrame = (ChapterFrame) obj;
        if (!(this.f12615c == chapterFrame.f12615c && this.f12616d == chapterFrame.f12616d && this.f12617e == chapterFrame.f12617e && this.f12618f == chapterFrame.f12618f && I.a((Object) this.f12614b, (Object) chapterFrame.f12614b) && Arrays.equals(this.f12619g, chapterFrame.f12619g))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i2 = (((((((527 + this.f12615c) * 31) + this.f12616d) * 31) + ((int) this.f12617e)) * 31) + ((int) this.f12618f)) * 31;
        String str = this.f12614b;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12614b);
        parcel.writeInt(this.f12615c);
        parcel.writeInt(this.f12616d);
        parcel.writeLong(this.f12617e);
        parcel.writeLong(this.f12618f);
        parcel.writeInt(this.f12619g.length);
        for (Id3Frame writeParcelable : this.f12619g) {
            parcel.writeParcelable(writeParcelable, 0);
        }
    }

    public ChapterFrame(Parcel parcel) {
        super("CHAP");
        String readString = parcel.readString();
        I.a(readString);
        this.f12614b = readString;
        this.f12615c = parcel.readInt();
        this.f12616d = parcel.readInt();
        this.f12617e = parcel.readLong();
        this.f12618f = parcel.readLong();
        int readInt = parcel.readInt();
        this.f12619g = new Id3Frame[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f12619g[i2] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }
}
