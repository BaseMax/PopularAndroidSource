package b.z;

import android.annotation.SuppressLint;
import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import b.z.j;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: RoomTrackingLiveData */
public class B<T> extends LiveData<T> {

    /* renamed from: k  reason: collision with root package name */
    public final RoomDatabase f3572k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f3573l;
    public final Callable<T> m;
    public final h n;
    public final j.b o;
    public final AtomicBoolean p = new AtomicBoolean(true);
    public final AtomicBoolean q = new AtomicBoolean(false);
    public final AtomicBoolean r = new AtomicBoolean(false);
    public final Runnable s = new y(this);
    public final Runnable t = new z(this);

    @SuppressLint({"RestrictedApi"})
    public B(RoomDatabase roomDatabase, h hVar, boolean z, Callable<T> callable, String[] strArr) {
        this.f3572k = roomDatabase;
        this.f3573l = z;
        this.m = callable;
        this.n = hVar;
        this.o = new A(this, strArr);
    }

    public void d() {
        super.d();
        this.n.a(this);
        f().execute(this.s);
    }

    public void e() {
        super.e();
        this.n.b(this);
    }

    public Executor f() {
        if (this.f3573l) {
            return this.f3572k.k();
        }
        return this.f3572k.j();
    }
}
