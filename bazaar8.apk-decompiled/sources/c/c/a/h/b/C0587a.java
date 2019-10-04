package c.c.a.h.b;

import android.content.Context;
import androidx.room.RoomDatabase;
import b.z.u;
import c.c.a.a.b.a.a.b.a;
import com.farsitel.bazaar.analytics.tracker.actionlog.data.local.ActionLogDatabase;
import h.f.b.j;

/* renamed from: c.c.a.h.b.a  reason: case insensitive filesystem */
/* compiled from: ActionLogModule.kt */
public final class C0587a {
    public final ActionLogDatabase a(Context context) {
        j.b(context, "context");
        RoomDatabase.a<ActionLogDatabase> a2 = u.a(context, ActionLogDatabase.class, "actionLog-db");
        a2.c();
        ActionLogDatabase b2 = a2.b();
        j.a((Object) b2, "Room.databaseBuilder(\n  …uctiveMigration().build()");
        return b2;
    }

    public final a a(ActionLogDatabase actionLogDatabase) {
        j.b(actionLogDatabase, "db");
        return actionLogDatabase.p();
    }
}
