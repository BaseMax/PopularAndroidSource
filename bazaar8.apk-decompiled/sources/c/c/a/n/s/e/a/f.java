package c.c.a.n.s.e.a;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.farsitel.bazaar.ui.payment.payment.options.BuyProductArgs;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: PaymentOptionsFragmentArgs.kt */
public final class f implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6878a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final BuyProductArgs f6879b;

    /* compiled from: PaymentOptionsFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final f a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(f.class.getClassLoader());
            if (!bundle.containsKey("buyProductArgs")) {
                throw new IllegalArgumentException("Required argument \"buyProductArgs\" is missing and does not have an android:defaultValue");
            } else if (Parcelable.class.isAssignableFrom(BuyProductArgs.class) || Serializable.class.isAssignableFrom(BuyProductArgs.class)) {
                BuyProductArgs buyProductArgs = (BuyProductArgs) bundle.get("buyProductArgs");
                if (buyProductArgs != null) {
                    return new f(buyProductArgs);
                }
                throw new IllegalArgumentException("Argument \"buyProductArgs\" is marked as non-null but was passed a null value.");
            } else {
                throw new UnsupportedOperationException(BuyProductArgs.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    public f(BuyProductArgs buyProductArgs) {
        j.b(buyProductArgs, "buyProductArgs");
        this.f6879b = buyProductArgs;
    }

    public static final f fromBundle(Bundle bundle) {
        return f6878a.a(bundle);
    }

    public final BuyProductArgs a() {
        return this.f6879b;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof f) && j.a((Object) this.f6879b, (Object) ((f) obj).f6879b));
    }

    public int hashCode() {
        BuyProductArgs buyProductArgs = this.f6879b;
        if (buyProductArgs != null) {
            return buyProductArgs.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "PaymentOptionsFragmentArgs(buyProductArgs=" + this.f6879b + ")";
    }
}
