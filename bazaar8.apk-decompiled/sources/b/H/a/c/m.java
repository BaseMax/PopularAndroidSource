package b.H.a.c;

import androidx.room.RoomDatabase;
import b.z.C0356e;

/* compiled from: WorkNameDao_Impl */
public final class m implements k {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f1462a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f1463b;

    public m(RoomDatabase roomDatabase) {
        this.f1462a = roomDatabase;
        this.f1463b = new l(this, roomDatabase);
    }

    public void a(j jVar) {
        this.f1462a.c();
        try {
            this.f1463b.a(jVar);
            this.f1462a.o();
        } finally {
            this.f1462a.e();
        }
    }
}
