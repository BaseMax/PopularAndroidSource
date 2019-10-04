package c.c.a.n.s.e.a;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.p;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.ui.payment.payment.options.BuyProductArgs;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: PaymentOptionsFragmentDirections.kt */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6880a = new a(null);

    /* compiled from: PaymentOptionsFragmentDirections.kt */
    public static final class a {
        public a() {
        }

        public final p a(long j2, BuyProductArgs buyProductArgs) {
            return new b(j2, buyProductArgs);
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public static /* synthetic */ p a(a aVar, String str, String str2, String str3, long j2, String str4, String str5, String str6, boolean z, BuyProductArgs buyProductArgs, int i2, Object obj) {
            int i3 = i2;
            return aVar.a(str, (i3 & 2) != 0 ? null : str2, (i3 & 4) != 0 ? null : str3, j2, str4, str5, str6, z, (i3 & 256) != 0 ? null : buyProductArgs);
        }

        public final p a(String str, String str2, String str3, long j2, String str4, String str5, String str6, boolean z, BuyProductArgs buyProductArgs) {
            j.b(str, "dealer");
            String str7 = str4;
            j.b(str7, "paymentType");
            String str8 = str5;
            j.b(str8, "paymentGatewayType");
            String str9 = str6;
            j.b(str9, "gatewayCode");
            c cVar = new c(str, str2, str3, j2, str7, str8, str9, z, buyProductArgs);
            return cVar;
        }

        public static /* synthetic */ p a(a aVar, boolean z, ErrorModel errorModel, String str, String str2, String str3, int i2, Object obj) {
            return aVar.a(z, (i2 & 2) != 0 ? null : errorModel, str, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? null : str3);
        }

        public final p a(boolean z, ErrorModel errorModel, String str, String str2, String str3) {
            j.b(str, "message");
            d dVar = new d(z, errorModel, str, str2, str3);
            return dVar;
        }
    }

    /* compiled from: PaymentOptionsFragmentDirections.kt */
    private static final class b implements p {

        /* renamed from: a  reason: collision with root package name */
        public final long f6881a;

        /* renamed from: b  reason: collision with root package name */
        public final BuyProductArgs f6882b;

        public b() {
            this(0, null, 3, null);
        }

        public b(long j2, BuyProductArgs buyProductArgs) {
            this.f6881a = j2;
            this.f6882b = buyProductArgs;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putLong("minimumNeededCredit", this.f6881a);
            if (Parcelable.class.isAssignableFrom(BuyProductArgs.class)) {
                bundle.putParcelable("buyProductArgs", this.f6882b);
            } else if (Serializable.class.isAssignableFrom(BuyProductArgs.class)) {
                bundle.putSerializable("buyProductArgs", (Serializable) this.f6882b);
            }
            return bundle;
        }

        public int b() {
            return R.id.openCreditOptions;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof b) {
                    b bVar = (b) obj;
                    if (!(this.f6881a == bVar.f6881a) || !j.a((Object) this.f6882b, (Object) bVar.f6882b)) {
                        return false;
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            int a2 = Long.valueOf(this.f6881a).hashCode() * 31;
            BuyProductArgs buyProductArgs = this.f6882b;
            return a2 + (buyProductArgs != null ? buyProductArgs.hashCode() : 0);
        }

        public String toString() {
            return "OpenCreditOptions(minimumNeededCredit=" + this.f6881a + ", buyProductArgs=" + this.f6882b + ")";
        }

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public /* synthetic */ b(long j2, BuyProductArgs buyProductArgs, int i2, f fVar) {
            this((i2 & 1) != 0 ? 0 : j2, (i2 & 2) != 0 ? null : buyProductArgs);
        }
    }

    /* compiled from: PaymentOptionsFragmentDirections.kt */
    private static final class c implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6883a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6884b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6885c;

        /* renamed from: d  reason: collision with root package name */
        public final long f6886d;

        /* renamed from: e  reason: collision with root package name */
        public final String f6887e;

        /* renamed from: f  reason: collision with root package name */
        public final String f6888f;

        /* renamed from: g  reason: collision with root package name */
        public final String f6889g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f6890h;

        /* renamed from: i  reason: collision with root package name */
        public final BuyProductArgs f6891i;

        public c(String str, String str2, String str3, long j2, String str4, String str5, String str6, boolean z, BuyProductArgs buyProductArgs) {
            j.b(str, "dealer");
            j.b(str4, "paymentType");
            j.b(str5, "paymentGatewayType");
            j.b(str6, "gatewayCode");
            this.f6883a = str;
            this.f6884b = str2;
            this.f6885c = str3;
            this.f6886d = j2;
            this.f6887e = str4;
            this.f6888f = str5;
            this.f6889g = str6;
            this.f6890h = z;
            this.f6891i = buyProductArgs;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("dealer", this.f6883a);
            bundle.putString("sku", this.f6884b);
            bundle.putString("developerPayload", this.f6885c);
            bundle.putLong("amount", this.f6886d);
            bundle.putString("paymentType", this.f6887e);
            bundle.putString("paymentGatewayType", this.f6888f);
            bundle.putString("gatewayCode", this.f6889g);
            bundle.putBoolean("navigateToPaymentOptionsAfter", this.f6890h);
            if (Parcelable.class.isAssignableFrom(BuyProductArgs.class)) {
                bundle.putParcelable("buyProductArgs", this.f6891i);
            } else if (Serializable.class.isAssignableFrom(BuyProductArgs.class)) {
                bundle.putSerializable("buyProductArgs", (Serializable) this.f6891i);
            }
            return bundle;
        }

        public int b() {
            return R.id.openGatewayPayment;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof c) {
                    c cVar = (c) obj;
                    if (j.a((Object) this.f6883a, (Object) cVar.f6883a) && j.a((Object) this.f6884b, (Object) cVar.f6884b) && j.a((Object) this.f6885c, (Object) cVar.f6885c)) {
                        if ((this.f6886d == cVar.f6886d) && j.a((Object) this.f6887e, (Object) cVar.f6887e) && j.a((Object) this.f6888f, (Object) cVar.f6888f) && j.a((Object) this.f6889g, (Object) cVar.f6889g)) {
                            if (!(this.f6890h == cVar.f6890h) || !j.a((Object) this.f6891i, (Object) cVar.f6891i)) {
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
            String str = this.f6883a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f6884b;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f6885c;
            int hashCode3 = (((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + Long.valueOf(this.f6886d).hashCode()) * 31;
            String str4 = this.f6887e;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.f6888f;
            int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
            String str6 = this.f6889g;
            int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
            boolean z = this.f6890h;
            if (z) {
                z = true;
            }
            int i3 = (hashCode6 + (z ? 1 : 0)) * 31;
            BuyProductArgs buyProductArgs = this.f6891i;
            if (buyProductArgs != null) {
                i2 = buyProductArgs.hashCode();
            }
            return i3 + i2;
        }

        public String toString() {
            return "OpenGatewayPayment(dealer=" + this.f6883a + ", sku=" + this.f6884b + ", developerPayload=" + this.f6885c + ", amount=" + this.f6886d + ", paymentType=" + this.f6887e + ", paymentGatewayType=" + this.f6888f + ", gatewayCode=" + this.f6889g + ", navigateToPaymentOptionsAfter=" + this.f6890h + ", buyProductArgs=" + this.f6891i + ")";
        }
    }

    /* compiled from: PaymentOptionsFragmentDirections.kt */
    private static final class d implements p {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f6892a;

        /* renamed from: b  reason: collision with root package name */
        public final ErrorModel f6893b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6894c;

        /* renamed from: d  reason: collision with root package name */
        public final String f6895d;

        /* renamed from: e  reason: collision with root package name */
        public final String f6896e;

        public d(boolean z, ErrorModel errorModel, String str, String str2, String str3) {
            j.b(str, "message");
            this.f6892a = z;
            this.f6893b = errorModel;
            this.f6894c = str;
            this.f6895d = str2;
            this.f6896e = str3;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putBoolean("isSuccess", this.f6892a);
            if (Parcelable.class.isAssignableFrom(ErrorModel.class)) {
                bundle.putParcelable("errorModel", (Parcelable) this.f6893b);
            } else if (Serializable.class.isAssignableFrom(ErrorModel.class)) {
                bundle.putSerializable("errorModel", this.f6893b);
            }
            bundle.putString("message", this.f6894c);
            bundle.putString("paymentData", this.f6895d);
            bundle.putString("sign", this.f6896e);
            return bundle;
        }

        public int b() {
            return R.id.openThankYouPage;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof d) {
                    d dVar = (d) obj;
                    if (!(this.f6892a == dVar.f6892a) || !j.a((Object) this.f6893b, (Object) dVar.f6893b) || !j.a((Object) this.f6894c, (Object) dVar.f6894c) || !j.a((Object) this.f6895d, (Object) dVar.f6895d) || !j.a((Object) this.f6896e, (Object) dVar.f6896e)) {
                        return false;
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f6892a;
            if (z) {
                z = true;
            }
            int i2 = (z ? 1 : 0) * true;
            ErrorModel errorModel = this.f6893b;
            int i3 = 0;
            int hashCode = (i2 + (errorModel != null ? errorModel.hashCode() : 0)) * 31;
            String str = this.f6894c;
            int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f6895d;
            int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f6896e;
            if (str3 != null) {
                i3 = str3.hashCode();
            }
            return hashCode3 + i3;
        }

        public String toString() {
            return "OpenThankYouPage(isSuccess=" + this.f6892a + ", errorModel=" + this.f6893b + ", message=" + this.f6894c + ", paymentData=" + this.f6895d + ", sign=" + this.f6896e + ")";
        }
    }
}
