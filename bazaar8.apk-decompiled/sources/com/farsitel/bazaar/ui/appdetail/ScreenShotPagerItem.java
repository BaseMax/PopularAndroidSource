package com.farsitel.bazaar.ui.appdetail;

import android.os.Parcel;
import android.os.Parcelable;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import h.f.b.f;
import h.f.b.j;
import java.util.List;

/* compiled from: ScreenShotPagerItem.kt */
public final class ScreenShotPagerItem implements Parcelable {
    public static final a CREATOR = new a(null);

    /* renamed from: a  reason: collision with root package name */
    public int f12328a;

    /* renamed from: b  reason: collision with root package name */
    public final List<EntityScreenshotItem> f12329b;

    /* compiled from: ScreenShotPagerItem.kt */
    public static final class a implements Parcelable.Creator<ScreenShotPagerItem> {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public ScreenShotPagerItem createFromParcel(Parcel parcel) {
            j.b(parcel, "parcel");
            return new ScreenShotPagerItem(parcel);
        }

        public ScreenShotPagerItem[] newArray(int i2) {
            return new ScreenShotPagerItem[i2];
        }
    }

    public ScreenShotPagerItem(int i2, List<? extends EntityScreenshotItem> list) {
        j.b(list, "imageList");
        this.f12328a = i2;
        this.f12329b = list;
    }

    public final List<EntityScreenshotItem> a() {
        return this.f12329b;
    }

    public final int b() {
        return this.f12328a;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ScreenShotPagerItem) {
                ScreenShotPagerItem screenShotPagerItem = (ScreenShotPagerItem) obj;
                if (!(this.f12328a == screenShotPagerItem.f12328a) || !j.a((Object) this.f12329b, (Object) screenShotPagerItem.f12329b)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int a2 = Integer.valueOf(this.f12328a).hashCode() * 31;
        List<EntityScreenshotItem> list = this.f12329b;
        return a2 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "ScreenShotPagerItem(selectedPosition=" + this.f12328a + ", imageList=" + this.f12329b + ")";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        j.b(parcel, "parcel");
        parcel.writeInt(this.f12328a);
        parcel.writeTypedList(this.f12329b);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public ScreenShotPagerItem(android.os.Parcel r3) {
        /*
            r2 = this;
            java.lang.String r0 = "parcel"
            h.f.b.j.b(r3, r0)
            int r0 = r3.readInt()
            com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem$CREATOR r1 = com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem.CREATOR
            java.util.ArrayList r3 = r3.createTypedArrayList(r1)
            if (r3 == 0) goto L_0x0015
            r2.<init>(r0, r3)
            return
        L_0x0015:
            h.f.b.j.a()
            r3 = 0
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem.<init>(android.os.Parcel):void");
    }

    public final void a(int i2) {
        this.f12328a = i2;
    }
}
