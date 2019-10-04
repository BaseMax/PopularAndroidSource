package c.c.a.n.s.a.a;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.farsitel.bazaar.ui.payment.payment.options.BuyProductArgs;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: CreditOptionsFragmentArgs.kt */
public final class e implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6811a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final long f6812b;

    /* renamed from: c  reason: collision with root package name */
    public final BuyProductArgs f6813c;

    /* compiled from: CreditOptionsFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final e a(Bundle bundle) {
            BuyProductArgs buyProductArgs;
            j.b(bundle, "bundle");
            bundle.setClassLoader(e.class.getClassLoader());
            long j2 = bundle.containsKey("minimumNeededCredit") ? bundle.getLong("minimumNeededCredit") : 0;
            if (!bundle.containsKey("buyProductArgs")) {
                buyProductArgs = null;
            } else if (Parcelable.class.isAssignableFrom(BuyProductArgs.class) || Serializable.class.isAssignableFrom(BuyProductArgs.class)) {
                buyProductArgs = (BuyProductArgs) bundle.get("buyProductArgs");
            } else {
                throw new UnsupportedOperationException(BuyProductArgs.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            return new e(j2, buyProductArgs);
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public e() {
        this(0, null, 3, null);
    }

    public e(long j2, BuyProductArgs buyProductArgs) {
        this.f6812b = j2;
        this.f6813c = buyProductArgs;
    }

    public static final e fromBundle(Bundle bundle) {
        return f6811a.a(bundle);
    }

    public final BuyProductArgs a() {
        return this.f6813c;
    }

    public final long b() {
        return this.f6812b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                if (!(this.f6812b == eVar.f6812b) || !j.a((Object) this.f6813c, (Object) eVar.f6813c)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int a2 = Long.valueOf(this.f6812b).hashCode() * 31;
        BuyProductArgs buyProductArgs = this.f6813c;
        return a2 + (buyProductArgs != null ? buyProductArgs.hashCode() : 0);
    }

    public String toString() {
        return "CreditOptionsFragmentArgs(minimumNeededCredit=" + this.f6812b + ", buyProductArgs=" + this.f6813c + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(long j2, BuyProductArgs buyProductArgs, int i2, f fVar) {
        this((i2 & 1) != 0 ? 0 : j2, (i2 & 2) != 0 ? null : buyProductArgs);
    }
}
