package com.farsitel.bazaar.data.feature.payment;

import android.os.Parcel;
import android.os.Parcelable;
import h.f.b.f;
import h.f.b.j;

/* compiled from: PaymentEntities.kt */
public final class CreditOption extends PaymentData implements Parcelable {
    public static final a CREATOR = new a(null);
    public final long amount;
    public final String title;

    /* compiled from: PaymentEntities.kt */
    public static final class a implements Parcelable.Creator<CreditOption> {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public CreditOption createFromParcel(Parcel parcel) {
            j.b(parcel, "parcel");
            return new CreditOption(parcel);
        }

        public CreditOption[] newArray(int i2) {
            return new CreditOption[i2];
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CreditOption(String str, long j2) {
        super(null);
        j.b(str, "title");
        this.title = str;
        this.amount = j2;
    }

    public final long a() {
        return this.amount;
    }

    public final String b() {
        return this.title;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CreditOption) {
                CreditOption creditOption = (CreditOption) obj;
                if (j.a((Object) this.title, (Object) creditOption.title)) {
                    if (this.amount == creditOption.amount) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.title;
        int hashCode = str != null ? str.hashCode() : 0;
        long j2 = this.amount;
        return (hashCode * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "CreditOption(title=" + this.title + ", amount=" + this.amount + ")";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        j.b(parcel, "parcel");
        parcel.writeString(this.title);
        parcel.writeLong(this.amount);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public CreditOption(android.os.Parcel r4) {
        /*
            r3 = this;
            java.lang.String r0 = "parcel"
            h.f.b.j.b(r4, r0)
            java.lang.String r0 = r4.readString()
            if (r0 == 0) goto L_0x0013
            long r1 = r4.readLong()
            r3.<init>(r0, r1)
            return
        L_0x0013:
            h.f.b.j.a()
            r4 = 0
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.payment.CreditOption.<init>(android.os.Parcel):void");
    }
}
