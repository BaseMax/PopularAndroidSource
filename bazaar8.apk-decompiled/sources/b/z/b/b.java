package b.z.b;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.os.Build;
import androidx.room.RoomDatabase;
import b.C.a.e;
import java.util.ArrayList;

/* compiled from: DBUtil */
public class b {
    public static Cursor a(RoomDatabase roomDatabase, e eVar, boolean z) {
        Cursor a2 = roomDatabase.a(eVar);
        if (!z || !(a2 instanceof AbstractWindowedCursor)) {
            return a2;
        }
        AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) a2;
        int count = abstractWindowedCursor.getCount();
        return (Build.VERSION.SDK_INT < 23 || (abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count) < count) ? a.a(abstractWindowedCursor) : a2;
    }

    /* JADX INFO: finally extract failed */
    public static void a(b.C.a.b bVar) {
        ArrayList<String> arrayList = new ArrayList<>();
        Cursor d2 = bVar.d("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (d2.moveToNext()) {
            try {
                arrayList.add(d2.getString(0));
            } catch (Throwable th) {
                d2.close();
                throw th;
            }
        }
        d2.close();
        for (String str : arrayList) {
            if (str.startsWith("room_fts_content_sync_")) {
                bVar.b("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }
}
