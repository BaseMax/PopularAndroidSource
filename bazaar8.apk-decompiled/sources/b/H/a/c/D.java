package b.H.a.c;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import b.C.a.e;
import b.z.C0356e;
import b.z.x;
import java.util.ArrayList;
import java.util.List;

/* compiled from: WorkTagDao_Impl */
public final class D implements B {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f1439a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f1440b;

    public D(RoomDatabase roomDatabase) {
        this.f1439a = roomDatabase;
        this.f1440b = new C(this, roomDatabase);
    }

    public void a(A a2) {
        this.f1439a.c();
        try {
            this.f1440b.a(a2);
            this.f1439a.o();
        } finally {
            this.f1439a.e();
        }
    }

    public List<String> a(String str) {
        x a2 = x.a("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        Cursor a3 = this.f1439a.a((e) a2);
        try {
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                arrayList.add(a3.getString(0));
            }
            return arrayList;
        } finally {
            a3.close();
            a2.c();
        }
    }
}
