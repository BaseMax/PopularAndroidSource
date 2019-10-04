package c.c.a.e.d.n.a;

import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import b.z.C;
import b.z.C0356e;
import b.z.x;
import java.util.List;

/* compiled from: PlayedVideoDao_Impl */
public final class e implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f5300a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f5301b;

    /* renamed from: c  reason: collision with root package name */
    public final C f5302c;

    public e(RoomDatabase roomDatabase) {
        this.f5300a = roomDatabase;
        this.f5301b = new b(this, roomDatabase);
        this.f5302c = new c(this, roomDatabase);
    }

    public LiveData<List<f>> getAll() {
        x a2 = x.a("SELECT * from played_video order by date desc", 0);
        return this.f5300a.h().a(new String[]{"played_video"}, false, new d(this, a2));
    }

    public void a(f fVar) {
        this.f5300a.b();
        this.f5300a.c();
        try {
            this.f5301b.a(fVar);
            this.f5300a.o();
        } finally {
            this.f5300a.e();
        }
    }
}
