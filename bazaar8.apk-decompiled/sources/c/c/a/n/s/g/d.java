package c.c.a.n.s.g;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: PaymentThankYouPageFragmentArgs.kt */
public final class d implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6914a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final boolean f6915b;

    /* renamed from: c  reason: collision with root package name */
    public final ErrorModel f6916c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6917d;

    /* renamed from: e  reason: collision with root package name */
    public final String f6918e;

    /* renamed from: f  reason: collision with root package name */
    public final String f6919f;

    /* compiled from: PaymentThankYouPageFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final d a(Bundle bundle) {
            ErrorModel errorModel;
            j.b(bundle, "bundle");
            bundle.setClassLoader(d.class.getClassLoader());
            if (bundle.containsKey("isSuccess")) {
                boolean z = bundle.getBoolean("isSuccess");
                if (!bundle.containsKey("errorModel")) {
                    errorModel = null;
                } else if (Parcelable.class.isAssignableFrom(ErrorModel.class) || Serializable.class.isAssignableFrom(ErrorModel.class)) {
                    errorModel = (ErrorModel) bundle.get("errorModel");
                } else {
                    throw new UnsupportedOperationException(ErrorModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                }
                if (bundle.containsKey("message")) {
                    String string = bundle.getString("message");
                    if (string != null) {
                        d dVar = new d(z, errorModel, string, bundle.containsKey("paymentData") ? bundle.getString("paymentData") : null, bundle.containsKey("sign") ? bundle.getString("sign") : null);
                        return dVar;
                    }
                    throw new IllegalArgumentException("Argument \"message\" is marked as non-null but was passed a null value.");
                }
                throw new IllegalArgumentException("Required argument \"message\" is missing and does not have an android:defaultValue");
            }
            throw new IllegalArgumentException("Required argument \"isSuccess\" is missing and does not have an android:defaultValue");
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public d(boolean z, ErrorModel errorModel, String str, String str2, String str3) {
        j.b(str, "message");
        this.f6915b = z;
        this.f6916c = errorModel;
        this.f6917d = str;
        this.f6918e = str2;
        this.f6919f = str3;
    }

    public static final d fromBundle(Bundle bundle) {
        return f6914a.a(bundle);
    }

    public final ErrorModel a() {
        return this.f6916c;
    }

    public final String b() {
        return this.f6917d;
    }

    public final String c() {
        return this.f6918e;
    }

    public final String d() {
        return this.f6919f;
    }

    public final boolean e() {
        return this.f6915b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                if (!(this.f6915b == dVar.f6915b) || !j.a((Object) this.f6916c, (Object) dVar.f6916c) || !j.a((Object) this.f6917d, (Object) dVar.f6917d) || !j.a((Object) this.f6918e, (Object) dVar.f6918e) || !j.a((Object) this.f6919f, (Object) dVar.f6919f)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f6915b;
        if (z) {
            z = true;
        }
        int i2 = (z ? 1 : 0) * true;
        ErrorModel errorModel = this.f6916c;
        int i3 = 0;
        int hashCode = (i2 + (errorModel != null ? errorModel.hashCode() : 0)) * 31;
        String str = this.f6917d;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f6918e;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f6919f;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return hashCode3 + i3;
    }

    public String toString() {
        return "PaymentThankYouPageFragmentArgs(isSuccess=" + this.f6915b + ", errorModel=" + this.f6916c + ", message=" + this.f6917d + ", paymentData=" + this.f6918e + ", sign=" + this.f6919f + ")";
    }
}
