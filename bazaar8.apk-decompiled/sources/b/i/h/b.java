package b.i.h;

import android.content.Context;
import android.graphics.Typeface;
import b.i.h.f;
import java.util.concurrent.Callable;

/* compiled from: FontsContractCompat */
class b implements Callable<f.c> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f2666a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ a f2667b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f2668c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ String f2669d;

    public b(Context context, a aVar, int i2, String str) {
        this.f2666a = context;
        this.f2667b = aVar;
        this.f2668c = i2;
        this.f2669d = str;
    }

    public f.c call() {
        f.c a2 = f.a(this.f2666a, this.f2667b, this.f2668c);
        Typeface typeface = a2.f2685a;
        if (typeface != null) {
            f.f2673a.a(this.f2669d, typeface);
        }
        return a2;
    }
}
