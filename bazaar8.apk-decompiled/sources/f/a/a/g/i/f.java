package f.a.a.g.i;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import c.c.a.d.d.a;
import com.crashlytics.android.Crashlytics;
import f.a.a.d;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.InlineActivity;
import java.util.Arrays;

/* compiled from: ShortcutManager */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f14508a = {1, 3, 6, 10, 15, 21};

    /* renamed from: b  reason: collision with root package name */
    public static final int f14509b;

    /* renamed from: c  reason: collision with root package name */
    public g f14510c;

    /* renamed from: d  reason: collision with root package name */
    public SharedPreferences f14511d;

    static {
        int[] iArr = f14508a;
        f14509b = iArr[iArr.length - 1] + 1;
    }

    public f(g gVar) {
        this.f14510c = gVar;
        this.f14511d = gVar.f().getApplicationContext().getSharedPreferences("inline_pref", 0);
    }

    public boolean a() {
        boolean z = false;
        if (a(this.f14510c.h().f())) {
            return false;
        }
        SharedPreferences sharedPreferences = this.f14511d;
        int i2 = sharedPreferences.getInt("short__" + this.f14510c.h().d(), 0);
        SharedPreferences.Editor edit = this.f14511d.edit();
        int i3 = i2 + 1;
        edit.putInt("short__" + this.f14510c.h().d(), Math.min(f14509b, i3)).apply();
        if (Arrays.binarySearch(f14508a, i3) > -1) {
            z = true;
        }
        return z;
    }

    public final boolean a(String str) {
        try {
            ApplicationInfo applicationInfo = this.f14510c.f().getPackageManager().getPackageInfo(str, 0).applicationInfo;
            return true;
        } catch (Exception e2) {
            Crashlytics.logException(e2);
            return false;
        }
    }

    public void a(Bitmap bitmap) {
        a(this.f14510c.f(), this.f14510c.h().f(), this.f14510c.h().e(), bitmap, this.f14510c.h().d());
    }

    public static void a(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences("inline_pref", 0).edit();
        edit.putInt("short__" + str, f14509b).apply();
    }

    public final void a(Context context, String str, String str2, Bitmap bitmap, String str3) {
        a aVar = new a(context);
        a(context, str3);
        Intent b2 = InlineActivity.b(str3);
        b2.putExtra("ref", "shortcut");
        if (bitmap == null) {
            bitmap = BitmapFactory.decodeResource(context.getResources(), d.ic_inline);
        }
        int i2 = (int) (context.getResources().getDisplayMetrics().density * 48.0f);
        if (!(bitmap.getWidth() == i2 && bitmap.getHeight() == i2)) {
            bitmap = Bitmap.createScaledBitmap(bitmap, i2, i2, true);
        }
        if (str2 == null) {
            str2 = context.getString(f.a.a.g.inline_app);
        }
        aVar.a(str, str2, bitmap, b2);
    }
}
