package b.i.a;

import android.app.Activity;
import android.content.pm.PackageManager;
import b.i.a.b;

/* compiled from: ActivityCompat */
class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String[] f2501a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Activity f2502b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f2503c;

    public a(String[] strArr, Activity activity, int i2) {
        this.f2501a = strArr;
        this.f2502b = activity;
        this.f2503c = i2;
    }

    public void run() {
        int[] iArr = new int[this.f2501a.length];
        PackageManager packageManager = this.f2502b.getPackageManager();
        String packageName = this.f2502b.getPackageName();
        int length = this.f2501a.length;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = packageManager.checkPermission(this.f2501a[i2], packageName);
        }
        ((b.a) this.f2502b).onRequestPermissionsResult(this.f2503c, this.f2501a, iArr);
    }
}
