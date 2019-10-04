package com.google.android.exoplayer2.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import java.util.Arrays;
import java.util.List;

public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final Entry[] f12594a;

    public interface Entry extends Parcelable {
    }

    public Metadata(Entry... entryArr) {
        this.f12594a = entryArr == null ? new Entry[0] : entryArr;
    }

    public int a() {
        return this.f12594a.length;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Metadata.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f12594a, ((Metadata) obj).f12594a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f12594a);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f12594a.length);
        for (Entry writeParcelable : this.f12594a) {
            parcel.writeParcelable(writeParcelable, 0);
        }
    }

    public Entry a(int i2) {
        return this.f12594a[i2];
    }

    public Metadata(List<? extends Entry> list) {
        if (list != null) {
            this.f12594a = new Entry[list.size()];
            list.toArray(this.f12594a);
            return;
        }
        this.f12594a = new Entry[0];
    }

    public Metadata a(Metadata metadata) {
        return metadata == null ? this : a(metadata.f12594a);
    }

    public Metadata a(Entry... entryArr) {
        Entry[] entryArr2 = this.f12594a;
        Entry[] entryArr3 = (Entry[]) Arrays.copyOf(entryArr2, entryArr2.length + entryArr.length);
        System.arraycopy(entryArr, 0, entryArr3, this.f12594a.length, entryArr.length);
        I.a((T[]) entryArr3);
        return new Metadata(entryArr3);
    }

    public Metadata(Parcel parcel) {
        this.f12594a = new Entry[parcel.readInt()];
        int i2 = 0;
        while (true) {
            Entry[] entryArr = this.f12594a;
            if (i2 < entryArr.length) {
                entryArr[i2] = (Entry) parcel.readParcelable(Entry.class.getClassLoader());
                i2++;
            } else {
                return;
            }
        }
    }
}
