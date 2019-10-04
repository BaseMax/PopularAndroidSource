package e.a.a.a.a.g;

import android.content.Context;
import android.graphics.BitmapFactory;
import e.a.a.a.f;
import io.fabric.sdk.android.services.common.CommonUtils;

/* compiled from: IconRequest */
public class o {

    /* renamed from: a  reason: collision with root package name */
    public final String f13822a;

    /* renamed from: b  reason: collision with root package name */
    public final int f13823b;

    /* renamed from: c  reason: collision with root package name */
    public final int f13824c;

    /* renamed from: d  reason: collision with root package name */
    public final int f13825d;

    public o(String str, int i2, int i3, int i4) {
        this.f13822a = str;
        this.f13823b = i2;
        this.f13824c = i3;
        this.f13825d = i4;
    }

    public static o a(Context context, String str) {
        if (str != null) {
            try {
                int d2 = CommonUtils.d(context);
                e.a.a.a.o e2 = f.e();
                e2.d("Fabric", "App icon resource ID is " + d2);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeResource(context.getResources(), d2, options);
                return new o(str, d2, options.outWidth, options.outHeight);
            } catch (Exception e3) {
                f.e().b("Fabric", "Failed to load icon", e3);
            }
        }
        return null;
    }
}
