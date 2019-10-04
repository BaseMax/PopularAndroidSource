package c.c.a.n.v;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import kotlin.TypeCastException;

/* compiled from: ScreenshotFragmentArgs.kt */
public final class e implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f7030a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final ScreenShotPagerItem f7031b;

    /* compiled from: ScreenshotFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final e a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(e.class.getClassLoader());
            if (!bundle.containsKey("data")) {
                throw new IllegalArgumentException("Required argument \"data\" is missing and does not have an android:defaultValue");
            } else if (Parcelable.class.isAssignableFrom(ScreenShotPagerItem.class) || Serializable.class.isAssignableFrom(ScreenShotPagerItem.class)) {
                ScreenShotPagerItem screenShotPagerItem = (ScreenShotPagerItem) bundle.get("data");
                if (screenShotPagerItem != null) {
                    return new e(screenShotPagerItem);
                }
                throw new IllegalArgumentException("Argument \"data\" is marked as non-null but was passed a null value.");
            } else {
                throw new UnsupportedOperationException(ScreenShotPagerItem.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public e(ScreenShotPagerItem screenShotPagerItem) {
        j.b(screenShotPagerItem, "data");
        this.f7031b = screenShotPagerItem;
    }

    public static final e fromBundle(Bundle bundle) {
        return f7030a.a(bundle);
    }

    public final ScreenShotPagerItem a() {
        return this.f7031b;
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(ScreenShotPagerItem.class)) {
            ScreenShotPagerItem screenShotPagerItem = this.f7031b;
            if (screenShotPagerItem != null) {
                bundle.putParcelable("data", screenShotPagerItem);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
            }
        } else if (Serializable.class.isAssignableFrom(ScreenShotPagerItem.class)) {
            ScreenShotPagerItem screenShotPagerItem2 = this.f7031b;
            if (screenShotPagerItem2 != null) {
                bundle.putSerializable("data", (Serializable) screenShotPagerItem2);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type java.io.Serializable");
            }
        } else {
            throw new UnsupportedOperationException(ScreenShotPagerItem.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
        }
        return bundle;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof e) && j.a((Object) this.f7031b, (Object) ((e) obj).f7031b));
    }

    public int hashCode() {
        ScreenShotPagerItem screenShotPagerItem = this.f7031b;
        if (screenShotPagerItem != null) {
            return screenShotPagerItem.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "ScreenshotFragmentArgs(data=" + this.f7031b + ")";
    }
}
