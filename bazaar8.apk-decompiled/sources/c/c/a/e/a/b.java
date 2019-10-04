package c.c.a.e.a;

import b.z.a.a;
import h.f.b.j;

/* compiled from: RoomMigration.kt */
public final class b extends a {
    public b(int i2, int i3) {
        super(i2, i3);
    }

    public void a(b.C.a.b bVar) {
        j.b(bVar, "database");
        bVar.b("DELETE FROM played_video  WHERE title IS ''");
    }
}
