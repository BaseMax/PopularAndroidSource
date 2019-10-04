package b.z;

import androidx.room.RoomDatabase;
import b.C.a.f;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: SharedSQLiteStatement */
public abstract class C {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicBoolean f3574a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    public final RoomDatabase f3575b;

    /* renamed from: c  reason: collision with root package name */
    public volatile f f3576c;

    public C(RoomDatabase roomDatabase) {
        this.f3575b = roomDatabase;
    }

    public final f a(boolean z) {
        if (!z) {
            return c();
        }
        if (this.f3576c == null) {
            this.f3576c = c();
        }
        return this.f3576c;
    }

    public void b() {
        this.f3575b.a();
    }

    public final f c() {
        return this.f3575b.a(d());
    }

    public abstract String d();

    public f a() {
        b();
        return a(this.f3574a.compareAndSet(false, true));
    }

    public void a(f fVar) {
        if (fVar == this.f3576c) {
            this.f3574a.set(false);
        }
    }
}
