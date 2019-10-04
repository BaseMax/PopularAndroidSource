package c.c.a.n.s.f;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.p;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.payment.payment.options.BuyProductArgs;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import kotlin.TypeCastException;

/* compiled from: StartPaymentFragmentDirections.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0101a f6902a = new C0101a(null);

    /* renamed from: c.c.a.n.s.f.a$a  reason: collision with other inner class name */
    /* compiled from: StartPaymentFragmentDirections.kt */
    public static final class C0101a {
        public C0101a() {
        }

        public final p a(long j2, BuyProductArgs buyProductArgs) {
            return new b(j2, buyProductArgs);
        }

        public /* synthetic */ C0101a(f fVar) {
            this();
        }

        public static /* synthetic */ p a(C0101a aVar, long j2, BuyProductArgs buyProductArgs, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                j2 = 0;
            }
            if ((i2 & 2) != 0) {
                buyProductArgs = null;
            }
            return aVar.a(j2, buyProductArgs);
        }

        public final p a(BuyProductArgs buyProductArgs) {
            j.b(buyProductArgs, "buyProductArgs");
            return new c(buyProductArgs);
        }
    }

    /* compiled from: StartPaymentFragmentDirections.kt */
    private static final class b implements p {

        /* renamed from: a  reason: collision with root package name */
        public final long f6903a;

        /* renamed from: b  reason: collision with root package name */
        public final BuyProductArgs f6904b;

        public b() {
            this(0, null, 3, null);
        }

        public b(long j2, BuyProductArgs buyProductArgs) {
            this.f6903a = j2;
            this.f6904b = buyProductArgs;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putLong("minimumNeededCredit", this.f6903a);
            if (Parcelable.class.isAssignableFrom(BuyProductArgs.class)) {
                bundle.putParcelable("buyProductArgs", this.f6904b);
            } else if (Serializable.class.isAssignableFrom(BuyProductArgs.class)) {
                bundle.putSerializable("buyProductArgs", (Serializable) this.f6904b);
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
                    if (!(this.f6903a == bVar.f6903a) || !j.a((Object) this.f6904b, (Object) bVar.f6904b)) {
                        return false;
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            int a2 = Long.valueOf(this.f6903a).hashCode() * 31;
            BuyProductArgs buyProductArgs = this.f6904b;
            return a2 + (buyProductArgs != null ? buyProductArgs.hashCode() : 0);
        }

        public String toString() {
            return "OpenCreditOptions(minimumNeededCredit=" + this.f6903a + ", buyProductArgs=" + this.f6904b + ")";
        }

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public /* synthetic */ b(long j2, BuyProductArgs buyProductArgs, int i2, f fVar) {
            this((i2 & 1) != 0 ? 0 : j2, (i2 & 2) != 0 ? null : buyProductArgs);
        }
    }

    /* compiled from: StartPaymentFragmentDirections.kt */
    private static final class c implements p {

        /* renamed from: a  reason: collision with root package name */
        public final BuyProductArgs f6905a;

        public c(BuyProductArgs buyProductArgs) {
            j.b(buyProductArgs, "buyProductArgs");
            this.f6905a = buyProductArgs;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            if (Parcelable.class.isAssignableFrom(BuyProductArgs.class)) {
                BuyProductArgs buyProductArgs = this.f6905a;
                if (buyProductArgs != null) {
                    bundle.putParcelable("buyProductArgs", buyProductArgs);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
                }
            } else if (Serializable.class.isAssignableFrom(BuyProductArgs.class)) {
                BuyProductArgs buyProductArgs2 = this.f6905a;
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
            return this == obj || ((obj instanceof c) && j.a((Object) this.f6905a, (Object) ((c) obj).f6905a));
        }

        public int hashCode() {
            BuyProductArgs buyProductArgs = this.f6905a;
            if (buyProductArgs != null) {
                return buyProductArgs.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "OpenPaymentOptions(buyProductArgs=" + this.f6905a + ")";
        }
    }
}
