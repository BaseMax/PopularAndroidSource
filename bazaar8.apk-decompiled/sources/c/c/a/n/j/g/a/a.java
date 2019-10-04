package c.c.a.n.j.g.a;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import kotlin.TypeCastException;

/* compiled from: PostVideoCommentFragmentArgs.kt */
public final class a implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final C0097a f6562a = new C0097a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6563b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6564c;

    /* renamed from: d  reason: collision with root package name */
    public final ToolbarInfoModel f6565d;

    /* renamed from: c.c.a.n.j.g.a.a$a  reason: collision with other inner class name */
    /* compiled from: PostVideoCommentFragmentArgs.kt */
    public static final class C0097a {
        public C0097a() {
        }

        public final a a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(a.class.getClassLoader());
            if (bundle.containsKey("referrer")) {
                String string = bundle.getString("referrer");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"referrer\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("videoId")) {
                    String string2 = bundle.getString("videoId");
                    if (string2 == null) {
                        throw new IllegalArgumentException("Argument \"videoId\" is marked as non-null but was passed a null value.");
                    } else if (!bundle.containsKey("toolbarInfo")) {
                        throw new IllegalArgumentException("Required argument \"toolbarInfo\" is missing and does not have an android:defaultValue");
                    } else if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class) || Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                        ToolbarInfoModel toolbarInfoModel = (ToolbarInfoModel) bundle.get("toolbarInfo");
                        if (toolbarInfoModel != null) {
                            return new a(string, string2, toolbarInfoModel);
                        }
                        throw new IllegalArgumentException("Argument \"toolbarInfo\" is marked as non-null but was passed a null value.");
                    } else {
                        throw new UnsupportedOperationException(ToolbarInfoModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                    }
                } else {
                    throw new IllegalArgumentException("Required argument \"videoId\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"referrer\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ C0097a(f fVar) {
            this();
        }
    }

    public a(String str, String str2, ToolbarInfoModel toolbarInfoModel) {
        j.b(str, "referrer");
        j.b(str2, "videoId");
        j.b(toolbarInfoModel, "toolbarInfo");
        this.f6563b = str;
        this.f6564c = str2;
        this.f6565d = toolbarInfoModel;
    }

    public static final a fromBundle(Bundle bundle) {
        return f6562a.a(bundle);
    }

    public final String a() {
        return this.f6563b;
    }

    public final ToolbarInfoModel b() {
        return this.f6565d;
    }

    public final String c() {
        return this.f6564c;
    }

    public final Bundle d() {
        Bundle bundle = new Bundle();
        bundle.putString("referrer", this.f6563b);
        bundle.putString("videoId", this.f6564c);
        if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class)) {
            ToolbarInfoModel toolbarInfoModel = this.f6565d;
            if (toolbarInfoModel != null) {
                bundle.putParcelable("toolbarInfo", (Parcelable) toolbarInfoModel);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
            }
        } else if (Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
            ToolbarInfoModel toolbarInfoModel2 = this.f6565d;
            if (toolbarInfoModel2 != null) {
                bundle.putSerializable("toolbarInfo", toolbarInfoModel2);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type java.io.Serializable");
            }
        } else {
            throw new UnsupportedOperationException(ToolbarInfoModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
        }
        return bundle;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f6565d, (java.lang.Object) r3.f6565d) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.n.j.g.a.a
            if (r0 == 0) goto L_0x0027
            c.c.a.n.j.g.a.a r3 = (c.c.a.n.j.g.a.a) r3
            java.lang.String r0 = r2.f6563b
            java.lang.String r1 = r3.f6563b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.f6564c
            java.lang.String r1 = r3.f6564c
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r0 = r2.f6565d
            com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r3 = r3.f6565d
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r3 = 0
            return r3
        L_0x0029:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.j.g.a.a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f6563b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f6564c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        ToolbarInfoModel toolbarInfoModel = this.f6565d;
        if (toolbarInfoModel != null) {
            i2 = toolbarInfoModel.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "PostVideoCommentFragmentArgs(referrer=" + this.f6563b + ", videoId=" + this.f6564c + ", toolbarInfo=" + this.f6565d + ")";
    }
}
