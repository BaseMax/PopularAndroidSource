package c.c.a.n.s.a.a;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.p;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.payment.payment.options.BuyProductArgs;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: CreditOptionsFragmentDirections.kt */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6814a = new a(null);

    /* compiled from: CreditOptionsFragmentDirections.kt */
    public static final class a {
        public a() {
        }

        public static /* synthetic */ p a(a aVar, String str, String str2, String str3, long j2, String str4, String str5, String str6, boolean z, BuyProductArgs buyProductArgs, int i2, Object obj) {
            int i3 = i2;
            return aVar.a(str, (i3 & 2) != 0 ? null : str2, (i3 & 4) != 0 ? null : str3, j2, str4, str5, str6, z, (i3 & 256) != 0 ? null : buyProductArgs);
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }

        public final p a(String str, String str2, String str3, long j2, String str4, String str5, String str6, boolean z, BuyProductArgs buyProductArgs) {
            j.b(str, "dealer");
            String str7 = str4;
            j.b(str7, "paymentType");
            String str8 = str5;
            j.b(str8, "paymentGatewayType");
            String str9 = str6;
            j.b(str9, "gatewayCode");
            b bVar = new b(str, str2, str3, j2, str7, str8, str9, z, buyProductArgs);
            return bVar;
        }
    }

    /* compiled from: CreditOptionsFragmentDirections.kt */
    private static final class b implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6815a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6816b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6817c;

        /* renamed from: d  reason: collision with root package name */
        public final long f6818d;

        /* renamed from: e  reason: collision with root package name */
        public final String f6819e;

        /* renamed from: f  reason: collision with root package name */
        public final String f6820f;

        /* renamed from: g  reason: collision with root package name */
        public final String f6821g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f6822h;

        /* renamed from: i  reason: collision with root package name */
        public final BuyProductArgs f6823i;

        public b(String str, String str2, String str3, long j2, String str4, String str5, String str6, boolean z, BuyProductArgs buyProductArgs) {
            j.b(str, "dealer");
            j.b(str4, "paymentType");
            j.b(str5, "paymentGatewayType");
            j.b(str6, "gatewayCode");
            this.f6815a = str;
            this.f6816b = str2;
            this.f6817c = str3;
            this.f6818d = j2;
            this.f6819e = str4;
            this.f6820f = str5;
            this.f6821g = str6;
            this.f6822h = z;
            this.f6823i = buyProductArgs;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("dealer", this.f6815a);
            bundle.putString("sku", this.f6816b);
            bundle.putString("developerPayload", this.f6817c);
            bundle.putLong("amount", this.f6818d);
            bundle.putString("paymentType", this.f6819e);
            bundle.putString("paymentGatewayType", this.f6820f);
            bundle.putString("gatewayCode", this.f6821g);
            bundle.putBoolean("navigateToPaymentOptionsAfter", this.f6822h);
            if (Parcelable.class.isAssignableFrom(BuyProductArgs.class)) {
                bundle.putParcelable("buyProductArgs", this.f6823i);
            } else if (Serializable.class.isAssignableFrom(BuyProductArgs.class)) {
                bundle.putSerializable("buyProductArgs", (Serializable) this.f6823i);
            }
            return bundle;
        }

        public int b() {
            return R.id.openGatewayPayment;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof b) {
                    b bVar = (b) obj;
                    if (j.a((Object) this.f6815a, (Object) bVar.f6815a) && j.a((Object) this.f6816b, (Object) bVar.f6816b) && j.a((Object) this.f6817c, (Object) bVar.f6817c)) {
                        if ((this.f6818d == bVar.f6818d) && j.a((Object) this.f6819e, (Object) bVar.f6819e) && j.a((Object) this.f6820f, (Object) bVar.f6820f) && j.a((Object) this.f6821g, (Object) bVar.f6821g)) {
                            if (!(this.f6822h == bVar.f6822h) || !j.a((Object) this.f6823i, (Object) bVar.f6823i)) {
                                return false;
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f6815a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f6816b;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f6817c;
            int hashCode3 = (((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + Long.valueOf(this.f6818d).hashCode()) * 31;
            String str4 = this.f6819e;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.f6820f;
            int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
            String str6 = this.f6821g;
            int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
            boolean z = this.f6822h;
            if (z) {
                z = true;
            }
            int i3 = (hashCode6 + (z ? 1 : 0)) * 31;
            BuyProductArgs buyProductArgs = this.f6823i;
            if (buyProductArgs != null) {
                i2 = buyProductArgs.hashCode();
            }
            return i3 + i2;
        }

        public String toString() {
            return "OpenGatewayPayment(dealer=" + this.f6815a + ", sku=" + this.f6816b + ", developerPayload=" + this.f6817c + ", amount=" + this.f6818d + ", paymentType=" + this.f6819e + ", paymentGatewayType=" + this.f6820f + ", gatewayCode=" + this.f6821g + ", navigateToPaymentOptionsAfter=" + this.f6822h + ", buyProductArgs=" + this.f6823i + ")";
        }
    }
}
