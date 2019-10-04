package c.c.a.a.b.a.a.b;

import androidx.room.RoomDatabase;
import b.C.a.b;
import b.z.b.d;
import b.z.w;
import com.farsitel.bazaar.analytics.tracker.actionlog.data.local.ActionLogDatabase_Impl;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: ActionLogDatabase_Impl */
class f extends w.a {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ActionLogDatabase_Impl f4523b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public f(ActionLogDatabase_Impl actionLogDatabase_Impl, int i2) {
        super(i2);
        this.f4523b = actionLogDatabase_Impl;
    }

    public void a(b bVar) {
        bVar.b("CREATE TABLE IF NOT EXISTS `actionLog` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `when` INTEGER NOT NULL, `json` TEXT NOT NULL)");
        bVar.b("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        bVar.b("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '02cdfb1ca6f75c0c9b494e578f9749cc')");
    }

    public void b(b bVar) {
        bVar.b("DROP TABLE IF EXISTS `actionLog`");
    }

    public void c(b bVar) {
        if (this.f4523b.f944h != null) {
            int size = this.f4523b.f944h.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((RoomDatabase.b) this.f4523b.f944h.get(i2)).a(bVar);
            }
        }
    }

    public void d(b bVar) {
        b unused = this.f4523b.f937a = bVar;
        this.f4523b.a(bVar);
        if (this.f4523b.f944h != null) {
            int size = this.f4523b.f944h.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((RoomDatabase.b) this.f4523b.f944h.get(i2)).b(bVar);
            }
        }
    }

    public void e(b bVar) {
    }

    public void f(b bVar) {
        b.z.b.b.a(bVar);
    }

    public void g(b bVar) {
        HashMap hashMap = new HashMap(3);
        hashMap.put("id", new d.a("id", "INTEGER", true, 1));
        hashMap.put("when", new d.a("when", "INTEGER", true, 0));
        hashMap.put("json", new d.a("json", "TEXT", true, 0));
        d dVar = new d("actionLog", hashMap, new HashSet(0), new HashSet(0));
        d a2 = d.a(bVar, "actionLog");
        if (!dVar.equals(a2)) {
            throw new IllegalStateException("Migration didn't properly handle actionLog(com.farsitel.bazaar.analytics.tracker.actionlog.data.local.LocalActionLog).\n Expected:\n" + dVar + "\n Found:\n" + a2);
        }
    }
}
