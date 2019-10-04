package c.c.a.n.u;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.farsitel.bazaar.common.model.appdetail.ReviewActionItem;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: ReviewsFragmentArgs.kt */
public final class o implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f7011a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final ReviewActionItem f7012b;

    /* renamed from: c  reason: collision with root package name */
    public final ToolbarInfoModel f7013c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f7014d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7015e;

    /* compiled from: ReviewsFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final o a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(o.class.getClassLoader());
            if (!bundle.containsKey("reviewItem")) {
                throw new IllegalArgumentException("Required argument \"reviewItem\" is missing and does not have an android:defaultValue");
            } else if (Parcelable.class.isAssignableFrom(ReviewActionItem.class) || Serializable.class.isAssignableFrom(ReviewActionItem.class)) {
                ReviewActionItem reviewActionItem = (ReviewActionItem) bundle.get("reviewItem");
                if (reviewActionItem == null) {
                    throw new IllegalArgumentException("Argument \"reviewItem\" is marked as non-null but was passed a null value.");
                } else if (!bundle.containsKey("toolbarInfo")) {
                    throw new IllegalArgumentException("Required argument \"toolbarInfo\" is missing and does not have an android:defaultValue");
                } else if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class) || Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                    ToolbarInfoModel toolbarInfoModel = (ToolbarInfoModel) bundle.get("toolbarInfo");
                    if (toolbarInfoModel == null) {
                        throw new IllegalArgumentException("Argument \"toolbarInfo\" is marked as non-null but was passed a null value.");
                    } else if (bundle.containsKey("canPostComment")) {
                        boolean z = bundle.getBoolean("canPostComment");
                        if (bundle.containsKey("myRate")) {
                            return new o(reviewActionItem, toolbarInfoModel, z, bundle.getInt("myRate"));
                        }
                        throw new IllegalArgumentException("Required argument \"myRate\" is missing and does not have an android:defaultValue");
                    } else {
                        throw new IllegalArgumentException("Required argument \"canPostComment\" is missing and does not have an android:defaultValue");
                    }
                } else {
                    throw new UnsupportedOperationException(ToolbarInfoModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                }
            } else {
                throw new UnsupportedOperationException(ReviewActionItem.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public o(ReviewActionItem reviewActionItem, ToolbarInfoModel toolbarInfoModel, boolean z, int i2) {
        j.b(reviewActionItem, "reviewItem");
        j.b(toolbarInfoModel, "toolbarInfo");
        this.f7012b = reviewActionItem;
        this.f7013c = toolbarInfoModel;
        this.f7014d = z;
        this.f7015e = i2;
    }

    public static final o fromBundle(Bundle bundle) {
        return f7011a.a(bundle);
    }

    public final boolean a() {
        return this.f7014d;
    }

    public final ReviewActionItem b() {
        return this.f7012b;
    }

    public final ToolbarInfoModel c() {
        return this.f7013c;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof o) {
                o oVar = (o) obj;
                if (j.a((Object) this.f7012b, (Object) oVar.f7012b) && j.a((Object) this.f7013c, (Object) oVar.f7013c)) {
                    if (this.f7014d == oVar.f7014d) {
                        if (this.f7015e == oVar.f7015e) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        ReviewActionItem reviewActionItem = this.f7012b;
        int i2 = 0;
        int hashCode = (reviewActionItem != null ? reviewActionItem.hashCode() : 0) * 31;
        ToolbarInfoModel toolbarInfoModel = this.f7013c;
        if (toolbarInfoModel != null) {
            i2 = toolbarInfoModel.hashCode();
        }
        int i3 = (hashCode + i2) * 31;
        boolean z = this.f7014d;
        if (z) {
            z = true;
        }
        return ((i3 + (z ? 1 : 0)) * 31) + Integer.valueOf(this.f7015e).hashCode();
    }

    public String toString() {
        return "ReviewsFragmentArgs(reviewItem=" + this.f7012b + ", toolbarInfo=" + this.f7013c + ", canPostComment=" + this.f7014d + ", myRate=" + this.f7015e + ")";
    }
}
