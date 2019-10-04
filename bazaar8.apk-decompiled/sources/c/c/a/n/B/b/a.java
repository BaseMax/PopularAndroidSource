package c.c.a.n.b.b;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.crashlytics.android.answers.SessionEventTransform;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import kotlin.TypeCastException;

/* compiled from: PostAppCommentFragmentArgs.kt */
public final class a implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final C0089a f6214a = new C0089a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6215b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6216c;

    /* renamed from: d  reason: collision with root package name */
    public final int f6217d;

    /* renamed from: e  reason: collision with root package name */
    public final ToolbarInfoModel f6218e;

    /* renamed from: c.c.a.n.b.b.a$a  reason: collision with other inner class name */
    /* compiled from: PostAppCommentFragmentArgs.kt */
    public static final class C0089a {
        public C0089a() {
        }

        public final a a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(a.class.getClassLoader());
            if (bundle.containsKey("packageName")) {
                String string = bundle.getString("packageName");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"packageName\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey(SessionEventTransform.APP_VERSION_CODE_KEY)) {
                    String string2 = bundle.getString(SessionEventTransform.APP_VERSION_CODE_KEY);
                    if (string2 != null) {
                        int i2 = bundle.containsKey("defaultRateBar") ? bundle.getInt("defaultRateBar") : 0;
                        if (!bundle.containsKey("toolbarInfo")) {
                            throw new IllegalArgumentException("Required argument \"toolbarInfo\" is missing and does not have an android:defaultValue");
                        } else if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class) || Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                            ToolbarInfoModel toolbarInfoModel = (ToolbarInfoModel) bundle.get("toolbarInfo");
                            if (toolbarInfoModel != null) {
                                return new a(string, string2, i2, toolbarInfoModel);
                            }
                            throw new IllegalArgumentException("Argument \"toolbarInfo\" is marked as non-null but was passed a null value.");
                        } else {
                            throw new UnsupportedOperationException(ToolbarInfoModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                        }
                    } else {
                        throw new IllegalArgumentException("Argument \"appVersionCode\" is marked as non-null but was passed a null value.");
                    }
                } else {
                    throw new IllegalArgumentException("Required argument \"appVersionCode\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"packageName\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ C0089a(f fVar) {
            this();
        }
    }

    public a(String str, String str2, int i2, ToolbarInfoModel toolbarInfoModel) {
        j.b(str, "packageName");
        j.b(str2, SessionEventTransform.APP_VERSION_CODE_KEY);
        j.b(toolbarInfoModel, "toolbarInfo");
        this.f6215b = str;
        this.f6216c = str2;
        this.f6217d = i2;
        this.f6218e = toolbarInfoModel;
    }

    public static final a fromBundle(Bundle bundle) {
        return f6214a.a(bundle);
    }

    public final String a() {
        return this.f6216c;
    }

    public final int b() {
        return this.f6217d;
    }

    public final String c() {
        return this.f6215b;
    }

    public final ToolbarInfoModel d() {
        return this.f6218e;
    }

    public final Bundle e() {
        Bundle bundle = new Bundle();
        bundle.putString("packageName", this.f6215b);
        bundle.putString(SessionEventTransform.APP_VERSION_CODE_KEY, this.f6216c);
        bundle.putInt("defaultRateBar", this.f6217d);
        if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class)) {
            ToolbarInfoModel toolbarInfoModel = this.f6218e;
            if (toolbarInfoModel != null) {
                bundle.putParcelable("toolbarInfo", (Parcelable) toolbarInfoModel);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
            }
        } else if (Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
            ToolbarInfoModel toolbarInfoModel2 = this.f6218e;
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

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (j.a((Object) this.f6215b, (Object) aVar.f6215b) && j.a((Object) this.f6216c, (Object) aVar.f6216c)) {
                    if (!(this.f6217d == aVar.f6217d) || !j.a((Object) this.f6218e, (Object) aVar.f6218e)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f6215b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f6216c;
        int hashCode2 = (((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Integer.valueOf(this.f6217d).hashCode()) * 31;
        ToolbarInfoModel toolbarInfoModel = this.f6218e;
        if (toolbarInfoModel != null) {
            i2 = toolbarInfoModel.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "PostAppCommentFragmentArgs(packageName=" + this.f6215b + ", appVersionCode=" + this.f6216c + ", defaultRateBar=" + this.f6217d + ", toolbarInfo=" + this.f6218e + ")";
    }
}
