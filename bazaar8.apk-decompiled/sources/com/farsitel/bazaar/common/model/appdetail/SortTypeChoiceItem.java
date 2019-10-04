package com.farsitel.bazaar.common.model.appdetail;

import android.os.Parcel;
import android.os.Parcelable;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: ViewHolderItem.kt */
public final class SortTypeChoiceItem implements Serializable, Parcelable {
    public static final CREATOR CREATOR = new CREATOR(null);
    public final String identifier;
    public final String title;

    /* compiled from: ViewHolderItem.kt */
    public static final class CREATOR implements Parcelable.Creator<SortTypeChoiceItem> {
        public CREATOR() {
        }

        public /* synthetic */ CREATOR(f fVar) {
            this();
        }

        public SortTypeChoiceItem createFromParcel(Parcel parcel) {
            j.b(parcel, "parcel");
            return new SortTypeChoiceItem(parcel);
        }

        public SortTypeChoiceItem[] newArray(int i2) {
            return new SortTypeChoiceItem[i2];
        }
    }

    public SortTypeChoiceItem(String str, String str2) {
        j.b(str, "identifier");
        j.b(str2, "title");
        this.identifier = str;
        this.title = str2;
    }

    public static /* synthetic */ SortTypeChoiceItem copy$default(SortTypeChoiceItem sortTypeChoiceItem, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = sortTypeChoiceItem.identifier;
        }
        if ((i2 & 2) != 0) {
            str2 = sortTypeChoiceItem.title;
        }
        return sortTypeChoiceItem.copy(str, str2);
    }

    public final String component1() {
        return this.identifier;
    }

    public final String component2() {
        return this.title;
    }

    public final SortTypeChoiceItem copy(String str, String str2) {
        j.b(str, "identifier");
        j.b(str2, "title");
        return new SortTypeChoiceItem(str, str2);
    }

    public int describeContents() {
        return 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.title, (java.lang.Object) r3.title) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.appdetail.SortTypeChoiceItem
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.appdetail.SortTypeChoiceItem r3 = (com.farsitel.bazaar.common.model.appdetail.SortTypeChoiceItem) r3
            java.lang.String r0 = r2.identifier
            java.lang.String r1 = r3.identifier
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.title
            java.lang.String r3 = r3.title
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.SortTypeChoiceItem.equals(java.lang.Object):boolean");
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.identifier;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.title;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "SortTypeChoiceItem(identifier=" + this.identifier + ", title=" + this.title + ")";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        j.b(parcel, "parcel");
        parcel.writeString(this.identifier);
        parcel.writeString(this.title);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public SortTypeChoiceItem(android.os.Parcel r3) {
        /*
            r2 = this;
            java.lang.String r0 = "parcel"
            h.f.b.j.b(r3, r0)
            java.lang.String r0 = r3.readString()
            r1 = 0
            if (r0 == 0) goto L_0x001a
            java.lang.String r3 = r3.readString()
            if (r3 == 0) goto L_0x0016
            r2.<init>(r0, r3)
            return
        L_0x0016:
            h.f.b.j.a()
            throw r1
        L_0x001a:
            h.f.b.j.a()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.SortTypeChoiceItem.<init>(android.os.Parcel):void");
    }
}
