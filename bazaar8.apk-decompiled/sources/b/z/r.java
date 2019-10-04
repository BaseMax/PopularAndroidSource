package b.z;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import androidx.room.MultiInstanceInvalidationService;
import b.z.j;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MultiInstanceInvalidationClient */
public class r {

    /* renamed from: a  reason: collision with root package name */
    public Context f3658a;

    /* renamed from: b  reason: collision with root package name */
    public final String f3659b;

    /* renamed from: c  reason: collision with root package name */
    public int f3660c;

    /* renamed from: d  reason: collision with root package name */
    public final j f3661d;

    /* renamed from: e  reason: collision with root package name */
    public final j.b f3662e;

    /* renamed from: f  reason: collision with root package name */
    public g f3663f;

    /* renamed from: g  reason: collision with root package name */
    public final Executor f3664g;

    /* renamed from: h  reason: collision with root package name */
    public final C0357f f3665h = new l(this);

    /* renamed from: i  reason: collision with root package name */
    public final AtomicBoolean f3666i = new AtomicBoolean(false);

    /* renamed from: j  reason: collision with root package name */
    public final ServiceConnection f3667j = new m(this);

    /* renamed from: k  reason: collision with root package name */
    public final Runnable f3668k = new n(this);

    /* renamed from: l  reason: collision with root package name */
    public final Runnable f3669l = new o(this);
    public final Runnable m = new p(this);

    public r(Context context, String str, j jVar, Executor executor) {
        this.f3658a = context.getApplicationContext();
        this.f3659b = str;
        this.f3661d = jVar;
        this.f3664g = executor;
        this.f3662e = new q(this, jVar.f3628c);
        this.f3658a.bindService(new Intent(this.f3658a, MultiInstanceInvalidationService.class), this.f3667j, 1);
    }
}
