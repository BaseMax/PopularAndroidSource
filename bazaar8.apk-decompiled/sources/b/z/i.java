package b.z;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import b.C.a.a;
import b.C.a.b;
import b.C.a.e;
import b.f.d;
import b.z.j;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;

/* compiled from: InvalidationTracker */
class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ j f3625a;

    public i(j jVar) {
        this.f3625a = jVar;
    }

    /* JADX INFO: finally extract failed */
    public final Set<Integer> a() {
        d dVar = new d();
        Cursor a2 = this.f3625a.f3630e.a((e) new a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
        while (a2.moveToNext()) {
            try {
                dVar.add(Integer.valueOf(a2.getInt(0)));
            } catch (Throwable th) {
                a2.close();
                throw th;
            }
        }
        a2.close();
        if (!dVar.isEmpty()) {
            this.f3625a.f3633h.l();
        }
        return dVar;
    }

    public void run() {
        b a2;
        Lock g2 = this.f3625a.f3630e.g();
        Set<Integer> set = null;
        try {
            g2.lock();
            if (!this.f3625a.a()) {
                g2.unlock();
            } else if (!this.f3625a.f3631f.compareAndSet(true, false)) {
                g2.unlock();
            } else if (this.f3625a.f3630e.l()) {
                g2.unlock();
            } else {
                if (this.f3625a.f3630e.f943g) {
                    a2 = this.f3625a.f3630e.i().a();
                    a2.n();
                    set = a();
                    a2.p();
                    a2.q();
                } else {
                    set = a();
                }
                g2.unlock();
                if (set != null && !set.isEmpty()) {
                    synchronized (this.f3625a.f3636k) {
                        Iterator<Map.Entry<j.b, j.c>> it = this.f3625a.f3636k.iterator();
                        while (it.hasNext()) {
                            ((j.c) it.next().getValue()).a(set);
                        }
                    }
                }
            }
        } catch (SQLiteException | IllegalStateException e2) {
            try {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e2);
            } catch (Throwable th) {
                g2.unlock();
                throw th;
            }
        } catch (Throwable th2) {
            a2.q();
            throw th2;
        }
    }
}
