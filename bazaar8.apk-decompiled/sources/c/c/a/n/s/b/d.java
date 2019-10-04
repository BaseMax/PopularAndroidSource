package c.c.a.n.s.b;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.p;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.ui.payment.payment.options.BuyProductArgs;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import kotlin.TypeCastException;

/* compiled from: GatewayPaymentFragmentDirections.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6841a = new a(null);

    /* compiled from: GatewayPaymentFragmentDirections.kt */
    public static final class a {
        public a() {
        }

        public static /* synthetic */ p a(a aVar, String str, int i2, Bundle bundle, int i3, String str2, int i4, Object obj) {
            int i5 = (i4 & 2) != 0 ? -1 : i2;
            if ((i4 & 4) != 0) {
                bundle = null;
            }
            return aVar.a(str, i5, bundle, (i4 & 8) != 0 ? -1 : i3, str2);
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final p a(String str, int i2, Bundle bundle, int i3, String str2) {
            j.b(str, "url");
            j.b(str2, "finishRedirectUrl");
            c cVar = new c(str, i2, bundle, i3, str2);
            return cVar;
        }

        public final p a(BuyProductArgs buyProductArgs) {
            j.b(buyProductArgs, "buyProductArgs");
            return new b(buyProductArgs);
        }

        public static /* synthetic */ p a(a aVar, boolean z, ErrorModel errorModel, String str, String str2, String str3, int i2, Object obj) {
            return aVar.a(z, (i2 & 2) != 0 ? null : errorModel, str, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? null : str3);
        }

        public final p a(boolean z, ErrorModel errorModel, String str, String str2, String str3) {
            j.b(str, "message");
            C0099d dVar = new C0099d(z, errorModel, str, str2, str3);
            return dVar;
        }
    }

    /* compiled from: GatewayPaymentFragmentDirections.kt */
    private static final class b implements p {

        /* renamed from: a  reason: collision with root package name */
        public final BuyProductArgs f6842a;

        public b(BuyProductArgs buyProductArgs) {
            j.b(buyProductArgs, "buyProductArgs");
            this.f6842a = buyProductArgs;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            if (Parcelable.class.isAssignableFrom(BuyProductArgs.class)) {
                BuyProductArgs buyProductArgs = this.f6842a;
                if (buyProductArgs != null) {
                    bundle.putParcelable("buyProductArgs", buyProductArgs);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
                }
            } else if (Serializable.class.isAssignableFrom(BuyProductArgs.class)) {
                BuyProductArgs buyProductArgs2 = this.f6842a;
                if (buyProductArgs2 != null) {
                    bundle.putSerializable("buyProductArgs", (Serializable) buyProductArgs2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type java.io.Serializable");
                }
            } else {
                throw new UnsupportedOperationException(BuyProductArgs.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            return bundle;
        }

        public int b() {
            return R.id.openPaymentOptions;
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof b) && j.a((Object) this.f6842a, (Object) ((b) obj).f6842a));
        }

        public int hashCode() {
            BuyProductArgs buyProductArgs = this.f6842a;
            if (buyProductArgs != null) {
                return buyProductArgs.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "OpenPaymentOptions(buyProductArgs=" + this.f6842a + ")";
        }
    }

    /* compiled from: GatewayPaymentFragmentDirections.kt */
    private static final class c implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6843a;

        /* renamed from: b  reason: collision with root package name */
        public final int f6844b;

        /* renamed from: c  reason: collision with root package name */
        public final Bundle f6845c;

        /* renamed from: d  reason: collision with root package name */
        public final int f6846d;

        /* renamed from: e  reason: collision with root package name */
        public final String f6847e;

        public c(String str, int i2, Bundle bundle, int i3, String str2) {
            j.b(str, "url");
            j.b(str2, "finishRedirectUrl");
            this.f6843a = str;
            this.f6844b = i2;
            this.f6845c = bundle;
            this.f6846d = i3;
            this.f6847e = str2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("url", this.f6843a);
            bundle.putInt("fallbackId", this.f6844b);
            if (Parcelable.class.isAssignableFrom(Bundle.class)) {
                bundle.putParcelable("fallbackBundle", this.f6845c);
            } else if (Serializable.class.isAssignableFrom(Bundle.class)) {
                bundle.putSerializable("fallbackBundle", (Serializable) this.f6845c);
            }
            bundle.putInt("cacheMode", this.f6846d);
            bundle.putString("finishRedirectUrl", this.f6847e);
            return bundle;
        }

        public int b() {
            return R.id.openPaymentWebView;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof c) {
                    c cVar = (c) obj;
                    if (j.a((Object) this.f6843a, (Object) cVar.f6843a)) {
                        if ((this.f6844b == cVar.f6844b) && j.a((Object) this.f6845c, (Object) cVar.f6845c)) {
                            if (!(this.f6846d == cVar.f6846d) || !j.a((Object) this.f6847e, (Object) cVar.f6847e)) {
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
            String str = this.f6843a;
            int i2 = 0;
            int hashCode = (((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f6844b).hashCode()) * 31;
            Bundle bundle = this.f6845c;
            int hashCode2 = (((hashCode + (bundle != null ? bundle.hashCode() : 0)) * 31) + Integer.valueOf(this.f6846d).hashCode()) * 31;
            String str2 = this.f6847e;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return hashCode2 + i2;
        }

        public String toString() {
            return "OpenPaymentWebView(url=" + this.f6843a + ", fallbackId=" + this.f6844b + ", fallbackBundle=" + this.f6845c + ", cacheMode=" + this.f6846d + ", finishRedirectUrl=" + this.f6847e + ")";
        }
    }

    /* renamed from: c.c.a.n.s.b.d$d  reason: collision with other inner class name */
    /* compiled from: GatewayPaymentFragmentDirections.kt */
    private static final class C0099d implements p {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f6848a;

        /* renamed from: b  reason: collision with root package name */
        public final ErrorModel f6849b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6850c;

        /* renamed from: d  reason: collision with root package name */
        public final String f6851d;

        /* renamed from: e  reason: collision with root package name */
        public final String f6852e;

        public C0099d(boolean z, ErrorModel errorModel, String str, String str2, String str3) {
            j.b(str, "message");
            this.f6848a = z;
            this.f6849b = errorModel;
            this.f6850c = str;
            this.f6851d = str2;
            this.f6852e = str3;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putBoolean("isSuccess", this.f6848a);
            if (Parcelable.class.isAssignableFrom(ErrorModel.class)) {
                bundle.putParcelable("errorModel", (Parcelable) this.f6849b);
            } else if (Serializable.class.isAssignableFrom(ErrorModel.class)) {
                bundle.putSerializable("errorModel", this.f6849b);
            }
            bundle.putString("message", this.f6850c);
            bundle.putString("paymentData", this.f6851d);
            bundle.putString("sign", this.f6852e);
            return bundle;
        }

        public int b() {
            return R.id.openThankYouPage;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof C0099d) {
                    C0099d dVar = (C0099d) obj;
                    if (!(this.f6848a == dVar.f6848a) || !j.a((Object) this.f6849b, (Object) dVar.f6849b) || !j.a((Object) this.f6850c, (Object) dVar.f6850c) || !j.a((Object) this.f6851d, (Object) dVar.f6851d) || !j.a((Object) this.f6852e, (Object) dVar.f6852e)) {
                        return false;
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f6848a;
            if (z) {
                z = true;
            }
            int i2 = (z ? 1 : 0) * true;
            ErrorModel errorModel = this.f6849b;
            int i3 = 0;
            int hashCode = (i2 + (errorModel != null ? errorModel.hashCode() : 0)) * 31;
            String str = this.f6850c;
            int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f6851d;
            int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f6852e;
            if (str3 != null) {
                i3 = str3.hashCode();
            }
            return hashCode3 + i3;
        }

        public String toString() {
            return "OpenThankYouPage(isSuccess=" + this.f6848a + ", errorModel=" + this.f6849b + ", message=" + this.f6850c + ", paymentData=" + this.f6851d + ", sign=" + this.f6852e + ")";
        }
    }
}
