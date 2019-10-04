package com.farsitel.bazaar.data.feature.payment;

import android.os.Parcel;
import android.os.Parcelable;
import com.crashlytics.android.answers.SessionEventTransform;
import h.f.b.f;
import h.f.b.j;

/* compiled from: PaymentEntities.kt */
public final class PaymentGateway extends PaymentData implements Parcelable {
    public static final a CREATOR = new a(null);
    public final String agreement;
    public final String code;
    public final String description;
    public final String icon;
    public final long price;
    public final String subDescription;
    public final String title;
    public final String type;

    /* compiled from: PaymentEntities.kt */
    public static final class a implements Parcelable.Creator<PaymentGateway> {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public PaymentGateway createFromParcel(Parcel parcel) {
            j.b(parcel, "parcel");
            return new PaymentGateway(parcel);
        }

        public PaymentGateway[] newArray(int i2) {
            return new PaymentGateway[i2];
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PaymentGateway(String str, String str2, String str3, String str4, String str5, String str6, String str7, long j2) {
        super(null);
        j.b(str, "title");
        j.b(str2, "icon");
        j.b(str3, SessionEventTransform.TYPE_KEY);
        j.b(str4, "code");
        j.b(str5, "agreement");
        j.b(str6, "description");
        j.b(str7, "subDescription");
        this.title = str;
        this.icon = str2;
        this.type = str3;
        this.code = str4;
        this.agreement = str5;
        this.description = str6;
        this.subDescription = str7;
        this.price = j2;
    }

    public final String a() {
        return this.agreement;
    }

    public final String b() {
        return this.code;
    }

    public final String c() {
        return this.description;
    }

    public final String d() {
        return this.icon;
    }

    public int describeContents() {
        return 0;
    }

    public final long e() {
        return this.price;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof PaymentGateway) {
                PaymentGateway paymentGateway = (PaymentGateway) obj;
                if (j.a((Object) this.title, (Object) paymentGateway.title) && j.a((Object) this.icon, (Object) paymentGateway.icon) && j.a((Object) this.type, (Object) paymentGateway.type) && j.a((Object) this.code, (Object) paymentGateway.code) && j.a((Object) this.agreement, (Object) paymentGateway.agreement) && j.a((Object) this.description, (Object) paymentGateway.description) && j.a((Object) this.subDescription, (Object) paymentGateway.subDescription)) {
                    if (this.price == paymentGateway.price) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String f() {
        return this.subDescription;
    }

    public final String g() {
        return this.title;
    }

    public final String h() {
        return this.type;
    }

    public int hashCode() {
        String str = this.title;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.icon;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.type;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.code;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.agreement;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.description;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.subDescription;
        if (str7 != null) {
            i2 = str7.hashCode();
        }
        long j2 = this.price;
        return ((hashCode6 + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "PaymentGateway(title=" + this.title + ", icon=" + this.icon + ", type=" + this.type + ", code=" + this.code + ", agreement=" + this.agreement + ", description=" + this.description + ", subDescription=" + this.subDescription + ", price=" + this.price + ")";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        j.b(parcel, "parcel");
        parcel.writeString(this.title);
        parcel.writeString(this.icon);
        parcel.writeString(this.type);
        parcel.writeString(this.code);
        parcel.writeString(this.agreement);
        parcel.writeString(this.description);
        parcel.writeString(this.subDescription);
        parcel.writeLong(this.price);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public PaymentGateway(android.os.Parcel r12) {
        /*
            r11 = this;
            java.lang.String r0 = "parcel"
            h.f.b.j.b(r12, r0)
            java.lang.String r2 = r12.readString()
            r0 = 0
            if (r2 == 0) goto L_0x0051
            java.lang.String r3 = r12.readString()
            if (r3 == 0) goto L_0x004d
            java.lang.String r4 = r12.readString()
            if (r4 == 0) goto L_0x0049
            java.lang.String r5 = r12.readString()
            if (r5 == 0) goto L_0x0045
            java.lang.String r6 = r12.readString()
            if (r6 == 0) goto L_0x0041
            java.lang.String r7 = r12.readString()
            if (r7 == 0) goto L_0x003d
            java.lang.String r8 = r12.readString()
            if (r8 == 0) goto L_0x0039
            long r9 = r12.readLong()
            r1 = r11
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            return
        L_0x0039:
            h.f.b.j.a()
            throw r0
        L_0x003d:
            h.f.b.j.a()
            throw r0
        L_0x0041:
            h.f.b.j.a()
            throw r0
        L_0x0045:
            h.f.b.j.a()
            throw r0
        L_0x0049:
            h.f.b.j.a()
            throw r0
        L_0x004d:
            h.f.b.j.a()
            throw r0
        L_0x0051:
            h.f.b.j.a()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.payment.PaymentGateway.<init>(android.os.Parcel):void");
    }
}
