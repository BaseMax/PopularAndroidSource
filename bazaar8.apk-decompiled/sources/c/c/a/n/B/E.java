package c.c.a.n.b;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: MoreDescriptionFragmentArgs.kt */
public final class E implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6195a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final AppMoreDescriptionItem f6196b;

    /* compiled from: MoreDescriptionFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final E a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(E.class.getClassLoader());
            if (!bundle.containsKey("appMoreDescription")) {
                throw new IllegalArgumentException("Required argument \"appMoreDescription\" is missing and does not have an android:defaultValue");
            } else if (Parcelable.class.isAssignableFrom(AppMoreDescriptionItem.class) || Serializable.class.isAssignableFrom(AppMoreDescriptionItem.class)) {
                AppMoreDescriptionItem appMoreDescriptionItem = (AppMoreDescriptionItem) bundle.get("appMoreDescription");
                if (appMoreDescriptionItem != null) {
                    return new E(appMoreDescriptionItem);
                }
                throw new IllegalArgumentException("Argument \"appMoreDescription\" is marked as non-null but was passed a null value.");
            } else {
                throw new UnsupportedOperationException(AppMoreDescriptionItem.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public E(AppMoreDescriptionItem appMoreDescriptionItem) {
        j.b(appMoreDescriptionItem, "appMoreDescription");
        this.f6196b = appMoreDescriptionItem;
    }

    public static final E fromBundle(Bundle bundle) {
        return f6195a.a(bundle);
    }

    public final AppMoreDescriptionItem a() {
        return this.f6196b;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof E) && j.a((Object) this.f6196b, (Object) ((E) obj).f6196b));
    }

    public int hashCode() {
        AppMoreDescriptionItem appMoreDescriptionItem = this.f6196b;
        if (appMoreDescriptionItem != null) {
            return appMoreDescriptionItem.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "MoreDescriptionFragmentArgs(appMoreDescription=" + this.f6196b + ")";
    }
}
