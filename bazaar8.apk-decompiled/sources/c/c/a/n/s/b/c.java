package c.c.a.n.s.b;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.farsitel.bazaar.ui.payment.payment.options.BuyProductArgs;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: GatewayPaymentFragmentArgs.kt */
public final class c implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6831a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6832b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6833c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6834d;

    /* renamed from: e  reason: collision with root package name */
    public final long f6835e;

    /* renamed from: f  reason: collision with root package name */
    public final String f6836f;

    /* renamed from: g  reason: collision with root package name */
    public final String f6837g;

    /* renamed from: h  reason: collision with root package name */
    public final String f6838h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f6839i;

    /* renamed from: j  reason: collision with root package name */
    public final BuyProductArgs f6840j;

    /* compiled from: GatewayPaymentFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final c a(Bundle bundle) {
            BuyProductArgs buyProductArgs;
            j.b(bundle, "bundle");
            bundle.setClassLoader(c.class.getClassLoader());
            if (bundle.containsKey("dealer")) {
                String string = bundle.getString("dealer");
                if (string != null) {
                    String string2 = bundle.containsKey("sku") ? bundle.getString("sku") : null;
                    String string3 = bundle.containsKey("developerPayload") ? bundle.getString("developerPayload") : null;
                    if (bundle.containsKey("amount")) {
                        long j2 = bundle.getLong("amount");
                        if (bundle.containsKey("paymentType")) {
                            String string4 = bundle.getString("paymentType");
                            if (string4 == null) {
                                throw new IllegalArgumentException("Argument \"paymentType\" is marked as non-null but was passed a null value.");
                            } else if (bundle.containsKey("paymentGatewayType")) {
                                String string5 = bundle.getString("paymentGatewayType");
                                if (string5 == null) {
                                    throw new IllegalArgumentException("Argument \"paymentGatewayType\" is marked as non-null but was passed a null value.");
                                } else if (bundle.containsKey("gatewayCode")) {
                                    String string6 = bundle.getString("gatewayCode");
                                    if (string6 == null) {
                                        throw new IllegalArgumentException("Argument \"gatewayCode\" is marked as non-null but was passed a null value.");
                                    } else if (bundle.containsKey("navigateToPaymentOptionsAfter")) {
                                        boolean z = bundle.getBoolean("navigateToPaymentOptionsAfter");
                                        if (!bundle.containsKey("buyProductArgs")) {
                                            buyProductArgs = null;
                                        } else if (Parcelable.class.isAssignableFrom(BuyProductArgs.class) || Serializable.class.isAssignableFrom(BuyProductArgs.class)) {
                                            buyProductArgs = (BuyProductArgs) bundle.get("buyProductArgs");
                                        } else {
                                            throw new UnsupportedOperationException(BuyProductArgs.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                                        }
                                        c cVar = new c(string, string2, string3, j2, string4, string5, string6, z, buyProductArgs);
                                        return cVar;
                                    } else {
                                        throw new IllegalArgumentException("Required argument \"navigateToPaymentOptionsAfter\" is missing and does not have an android:defaultValue");
                                    }
                                } else {
                                    throw new IllegalArgumentException("Required argument \"gatewayCode\" is missing and does not have an android:defaultValue");
                                }
                            } else {
                                throw new IllegalArgumentException("Required argument \"paymentGatewayType\" is missing and does not have an android:defaultValue");
                            }
                        } else {
                            throw new IllegalArgumentException("Required argument \"paymentType\" is missing and does not have an android:defaultValue");
                        }
                    } else {
                        throw new IllegalArgumentException("Required argument \"amount\" is missing and does not have an android:defaultValue");
                    }
                } else {
                    throw new IllegalArgumentException("Argument \"dealer\" is marked as non-null but was passed a null value.");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"dealer\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public c(String str, String str2, String str3, long j2, String str4, String str5, String str6, boolean z, BuyProductArgs buyProductArgs) {
        j.b(str, "dealer");
        j.b(str4, "paymentType");
        j.b(str5, "paymentGatewayType");
        j.b(str6, "gatewayCode");
        this.f6832b = str;
        this.f6833c = str2;
        this.f6834d = str3;
        this.f6835e = j2;
        this.f6836f = str4;
        this.f6837g = str5;
        this.f6838h = str6;
        this.f6839i = z;
        this.f6840j = buyProductArgs;
    }

    public static final c fromBundle(Bundle bundle) {
        return f6831a.a(bundle);
    }

    public final long a() {
        return this.f6835e;
    }

    public final BuyProductArgs b() {
        return this.f6840j;
    }

    public final String c() {
        return this.f6832b;
    }

    public final String d() {
        return this.f6834d;
    }

    public final String e() {
        return this.f6838h;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (j.a((Object) this.f6832b, (Object) cVar.f6832b) && j.a((Object) this.f6833c, (Object) cVar.f6833c) && j.a((Object) this.f6834d, (Object) cVar.f6834d)) {
                    if ((this.f6835e == cVar.f6835e) && j.a((Object) this.f6836f, (Object) cVar.f6836f) && j.a((Object) this.f6837g, (Object) cVar.f6837g) && j.a((Object) this.f6838h, (Object) cVar.f6838h)) {
                        if (!(this.f6839i == cVar.f6839i) || !j.a((Object) this.f6840j, (Object) cVar.f6840j)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final boolean f() {
        return this.f6839i;
    }

    public final String g() {
        return this.f6837g;
    }

    public final String h() {
        return this.f6836f;
    }

    public int hashCode() {
        String str = this.f6832b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f6833c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f6834d;
        int hashCode3 = (((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + Long.valueOf(this.f6835e).hashCode()) * 31;
        String str4 = this.f6836f;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f6837g;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.f6838h;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        boolean z = this.f6839i;
        if (z) {
            z = true;
        }
        int i3 = (hashCode6 + (z ? 1 : 0)) * 31;
        BuyProductArgs buyProductArgs = this.f6840j;
        if (buyProductArgs != null) {
            i2 = buyProductArgs.hashCode();
        }
        return i3 + i2;
    }

    public final String i() {
        return this.f6833c;
    }

    public String toString() {
        return "GatewayPaymentFragmentArgs(dealer=" + this.f6832b + ", sku=" + this.f6833c + ", developerPayload=" + this.f6834d + ", amount=" + this.f6835e + ", paymentType=" + this.f6836f + ", paymentGatewayType=" + this.f6837g + ", gatewayCode=" + this.f6838h + ", navigateToPaymentOptionsAfter=" + this.f6839i + ", buyProductArgs=" + this.f6840j + ")";
    }
}
