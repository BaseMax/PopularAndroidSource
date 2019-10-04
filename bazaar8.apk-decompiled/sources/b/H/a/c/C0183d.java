package b.H.a.c;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import b.C.a.e;
import b.z.C0356e;
import b.z.x;
import java.util.ArrayList;
import java.util.List;

/* renamed from: b.H.a.c.d  reason: case insensitive filesystem */
/* compiled from: DependencyDao_Impl */
public final class C0183d implements C0181b {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f1450a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f1451b;

    public C0183d(RoomDatabase roomDatabase) {
        this.f1450a = roomDatabase;
        this.f1451b = new C0182c(this, roomDatabase);
    }

    public void a(C0180a aVar) {
        this.f1450a.c();
        try {
            this.f1451b.a(aVar);
            this.f1450a.o();
        } finally {
            this.f1450a.e();
        }
    }

    public boolean b(String str) {
        x a2 = x.a("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        Cursor a3 = this.f1450a.a((e) a2);
        try {
            boolean z = false;
            if (a3.moveToFirst() && a3.getInt(0) != 0) {
                z = true;
            }
            return z;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public boolean c(String str) {
        x a2 = x.a("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        Cursor a3 = this.f1450a.a((e) a2);
        try {
            boolean z = false;
            if (a3.moveToFirst() && a3.getInt(0) != 0) {
                z = true;
            }
            return z;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public List<String> a(String str) {
        x a2 = x.a("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        Cursor a3 = this.f1450a.a((e) a2);
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
