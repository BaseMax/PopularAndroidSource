package com.farsitel.bazaar.ui.payment.payment.options;

import android.os.Parcel;
import android.os.Parcelable;
import h.f.b.f;
import h.f.b.j;

/* compiled from: BuyProductArgs.kt */
public final class BuyProductArgs implements Parcelable {
    public static final a CREATOR = new a(null);

    /* renamed from: a  reason: collision with root package name */
    public final String f12357a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12358b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12359c;

    /* renamed from: d  reason: collision with root package name */
    public final String f12360d;

    /* compiled from: BuyProductArgs.kt */
    public static final class a implements Parcelable.Creator<BuyProductArgs> {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public BuyProductArgs createFromParcel(Parcel parcel) {
            j.b(parcel, "parcel");
            return new BuyProductArgs(parcel);
        }

        public BuyProductArgs[] newArray(int i2) {
            return new BuyProductArgs[i2];
        }
    }

    public BuyProductArgs(String str, String str2, String str3, String str4) {
        j.b(str, "dealerPackageName");
        j.b(str2, "sku");
        j.b(str3, "paymentType");
        this.f12357a = str;
        this.f12358b = str2;
        this.f12359c = str3;
        this.f12360d = str4;
    }

    public final String a() {
        return this.f12357a;
    }

    public final String b() {
        return this.f12360d;
    }

    public final String c() {
        return this.f12359c;
    }

    public final String d() {
        return this.f12358b;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        j.b(parcel, "parcel");
        parcel.writeString(this.f12357a);
        parcel.writeString(this.f12358b);
        parcel.writeString(this.f12359c);
        parcel.writeString(this.f12360d);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public BuyProductArgs(android.os.Parcel r5) {
        /*
            r4 = this;
            java.lang.String r0 = "parcel"
            h.f.b.j.b(r5, r0)
            java.lang.String r0 = r5.readString()
            r1 = 0
            if (r0 == 0) goto L_0x0028
            java.lang.String r2 = r5.readString()
            if (r2 == 0) goto L_0x0024
            java.lang.String r3 = r5.readString()
            if (r3 == 0) goto L_0x0020
            java.lang.String r5 = r5.readString()
            r4.<init>(r0, r2, r3, r5)
            return
        L_0x0020:
            h.f.b.j.a()
            throw r1
        L_0x0024:
            h.f.b.j.a()
            throw r1
        L_0x0028:
            h.f.b.j.a()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.payment.payment.options.BuyProductArgs.<init>(android.os.Parcel):void");
    }
}
