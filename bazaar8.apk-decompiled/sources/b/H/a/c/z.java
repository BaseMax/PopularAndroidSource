package b.H.a.c;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.work.WorkInfo;
import b.C.a.e;
import b.C.a.f;
import b.H.a.c.o;
import b.H.b;
import b.H.d;
import b.f.C0243b;
import b.z.C;
import b.z.C0356e;
import b.z.b.c;
import b.z.x;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* compiled from: WorkSpecDao_Impl */
public final class z implements p {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f1491a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f1492b;

    /* renamed from: c  reason: collision with root package name */
    public final C f1493c;

    /* renamed from: d  reason: collision with root package name */
    public final C f1494d;

    /* renamed from: e  reason: collision with root package name */
    public final C f1495e;

    /* renamed from: f  reason: collision with root package name */
    public final C f1496f;

    /* renamed from: g  reason: collision with root package name */
    public final C f1497g;

    /* renamed from: h  reason: collision with root package name */
    public final C f1498h;

    /* renamed from: i  reason: collision with root package name */
    public final C f1499i;

    /* renamed from: j  reason: collision with root package name */
    public final C f1500j;

    public z(RoomDatabase roomDatabase) {
        this.f1491a = roomDatabase;
        this.f1492b = new q(this, roomDatabase);
        this.f1493c = new r(this, roomDatabase);
        this.f1494d = new s(this, roomDatabase);
        this.f1495e = new t(this, roomDatabase);
        this.f1496f = new u(this, roomDatabase);
        this.f1497g = new v(this, roomDatabase);
        this.f1498h = new w(this, roomDatabase);
        this.f1499i = new x(this, roomDatabase);
        this.f1500j = new y(this, roomDatabase);
    }

    public void a(o oVar) {
        this.f1491a.c();
        try {
            this.f1492b.a(oVar);
            this.f1491a.o();
        } finally {
            this.f1491a.e();
        }
    }

    public void b(String str, long j2) {
        f a2 = this.f1495e.a();
        this.f1491a.c();
        try {
            a2.a(1, j2);
            if (str == null) {
                a2.a(2);
            } else {
                a2.a(2, str);
            }
            a2.l();
            this.f1491a.o();
        } finally {
            this.f1491a.e();
            this.f1495e.a(a2);
        }
    }

    public WorkInfo.State c(String str) {
        x a2 = x.a("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        Cursor a3 = this.f1491a.a((e) a2);
        try {
            return a3.moveToFirst() ? F.c(a3.getInt(0)) : null;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public int d() {
        f a2 = this.f1499i.a();
        this.f1491a.c();
        try {
            int l2 = a2.l();
            this.f1491a.o();
            return l2;
        } finally {
            this.f1491a.e();
            this.f1499i.a(a2);
        }
    }

    public void delete(String str) {
        f a2 = this.f1493c.a();
        this.f1491a.c();
        if (str == null) {
            try {
                a2.a(1);
            } catch (Throwable th) {
                this.f1491a.e();
                this.f1493c.a(a2);
                throw th;
            }
        } else {
            a2.a(1, str);
        }
        a2.l();
        this.f1491a.o();
        this.f1491a.e();
        this.f1493c.a(a2);
    }

    public int e(String str) {
        f a2 = this.f1497g.a();
        this.f1491a.c();
        if (str == null) {
            try {
                a2.a(1);
            } catch (Throwable th) {
                this.f1491a.e();
                this.f1497g.a(a2);
                throw th;
            }
        } else {
            a2.a(1, str);
        }
        int l2 = a2.l();
        this.f1491a.o();
        this.f1491a.e();
        this.f1497g.a(a2);
        return l2;
    }

    public List<String> f(String str) {
        x a2 = x.a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        Cursor a3 = this.f1491a.a((e) a2);
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

    public List<d> g(String str) {
        x a2 = x.a("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        Cursor a3 = this.f1491a.a((e) a2);
        try {
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                arrayList.add(d.a(a3.getBlob(0)));
            }
            return arrayList;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public int h(String str) {
        f a2 = this.f1496f.a();
        this.f1491a.c();
        if (str == null) {
            try {
                a2.a(1);
            } catch (Throwable th) {
                this.f1491a.e();
                this.f1496f.a(a2);
                throw th;
            }
        } else {
            a2.a(1, str);
        }
        int l2 = a2.l();
        this.f1491a.o();
        this.f1491a.e();
        this.f1496f.a(a2);
        return l2;
    }

    public List<o.b> i(String str) {
        Cursor a2;
        x a3 = x.a("SELECT id, state, output FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            a3.a(1);
        } else {
            a3.a(1, str);
        }
        this.f1491a.c();
        try {
            a2 = this.f1491a.a((e) a3);
            C0243b bVar = new C0243b();
            int columnIndexOrThrow = a2.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = a2.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = a2.getColumnIndexOrThrow("output");
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                o.b bVar2 = new o.b();
                bVar2.f1478a = a2.getString(columnIndexOrThrow);
                bVar2.f1479b = F.c(a2.getInt(columnIndexOrThrow2));
                bVar2.f1480c = d.a(a2.getBlob(columnIndexOrThrow3));
                if (!a2.isNull(columnIndexOrThrow)) {
                    String string = a2.getString(columnIndexOrThrow);
                    ArrayList arrayList2 = (ArrayList) bVar.get(string);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        bVar.put(string, arrayList2);
                    }
                    bVar2.f1481d = arrayList2;
                }
                arrayList.add(bVar2);
            }
            a((C0243b<String, ArrayList<String>>) bVar);
            this.f1491a.o();
            a2.close();
            a3.c();
            this.f1491a.e();
            return arrayList;
        } catch (Throwable th) {
            this.f1491a.e();
            throw th;
        }
    }

    public void a(String str, d dVar) {
        f a2 = this.f1494d.a();
        this.f1491a.c();
        try {
            byte[] a3 = d.a(dVar);
            if (a3 == null) {
                a2.a(1);
            } else {
                a2.a(1, a3);
            }
            if (str == null) {
                a2.a(2);
            } else {
                a2.a(2, str);
            }
            a2.l();
            this.f1491a.o();
        } finally {
            this.f1491a.e();
            this.f1494d.a(a2);
        }
    }

    public o d(String str) {
        x xVar;
        o oVar;
        String str2 = str;
        x a2 = x.a("SELECT * FROM workspec WHERE id=?", 1);
        if (str2 == null) {
            a2.a(1);
        } else {
            a2.a(1, str2);
        }
        Cursor a3 = this.f1491a.a((e) a2);
        try {
            int columnIndexOrThrow = a3.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = a3.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = a3.getColumnIndexOrThrow("worker_class_name");
            int columnIndexOrThrow4 = a3.getColumnIndexOrThrow("input_merger_class_name");
            int columnIndexOrThrow5 = a3.getColumnIndexOrThrow("input");
            int columnIndexOrThrow6 = a3.getColumnIndexOrThrow("output");
            int columnIndexOrThrow7 = a3.getColumnIndexOrThrow("initial_delay");
            int columnIndexOrThrow8 = a3.getColumnIndexOrThrow("interval_duration");
            int columnIndexOrThrow9 = a3.getColumnIndexOrThrow("flex_duration");
            int columnIndexOrThrow10 = a3.getColumnIndexOrThrow("run_attempt_count");
            int columnIndexOrThrow11 = a3.getColumnIndexOrThrow("backoff_policy");
            int columnIndexOrThrow12 = a3.getColumnIndexOrThrow("backoff_delay_duration");
            int columnIndexOrThrow13 = a3.getColumnIndexOrThrow("period_start_time");
            int columnIndexOrThrow14 = a3.getColumnIndexOrThrow("minimum_retention_duration");
            xVar = a2;
            try {
                int columnIndexOrThrow15 = a3.getColumnIndexOrThrow("schedule_requested_at");
                int columnIndexOrThrow16 = a3.getColumnIndexOrThrow("required_network_type");
                int i2 = columnIndexOrThrow14;
                int columnIndexOrThrow17 = a3.getColumnIndexOrThrow("requires_charging");
                int i3 = columnIndexOrThrow13;
                int columnIndexOrThrow18 = a3.getColumnIndexOrThrow("requires_device_idle");
                int i4 = columnIndexOrThrow12;
                int columnIndexOrThrow19 = a3.getColumnIndexOrThrow("requires_battery_not_low");
                int i5 = columnIndexOrThrow11;
                int columnIndexOrThrow20 = a3.getColumnIndexOrThrow("requires_storage_not_low");
                int i6 = columnIndexOrThrow10;
                int columnIndexOrThrow21 = a3.getColumnIndexOrThrow("trigger_content_update_delay");
                int i7 = columnIndexOrThrow9;
                int columnIndexOrThrow22 = a3.getColumnIndexOrThrow("trigger_max_content_delay");
                int i8 = columnIndexOrThrow8;
                int columnIndexOrThrow23 = a3.getColumnIndexOrThrow("content_uri_triggers");
                if (a3.moveToFirst()) {
                    String string = a3.getString(columnIndexOrThrow);
                    String string2 = a3.getString(columnIndexOrThrow3);
                    int i9 = columnIndexOrThrow7;
                    b bVar = new b();
                    bVar.a(F.b(a3.getInt(columnIndexOrThrow16)));
                    int i10 = a3.getInt(columnIndexOrThrow17);
                    boolean z = false;
                    bVar.b(i10 != 0);
                    bVar.c(a3.getInt(columnIndexOrThrow18) != 0);
                    bVar.a(a3.getInt(columnIndexOrThrow19) != 0);
                    if (a3.getInt(columnIndexOrThrow20) != 0) {
                        z = true;
                    }
                    bVar.d(z);
                    bVar.a(a3.getLong(columnIndexOrThrow21));
                    bVar.b(a3.getLong(columnIndexOrThrow22));
                    bVar.a(F.a(a3.getBlob(columnIndexOrThrow23)));
                    oVar = new o(string, string2);
                    oVar.f1467d = F.c(a3.getInt(columnIndexOrThrow2));
                    oVar.f1469f = a3.getString(columnIndexOrThrow4);
                    oVar.f1470g = d.a(a3.getBlob(columnIndexOrThrow5));
                    oVar.f1471h = d.a(a3.getBlob(columnIndexOrThrow6));
                    oVar.f1472i = a3.getLong(i9);
                    oVar.f1473j = a3.getLong(i8);
                    oVar.f1474k = a3.getLong(i7);
                    oVar.m = a3.getInt(i6);
                    oVar.n = F.a(a3.getInt(i5));
                    oVar.o = a3.getLong(i4);
                    oVar.p = a3.getLong(i3);
                    oVar.q = a3.getLong(i2);
                    oVar.r = a3.getLong(columnIndexOrThrow15);
                    oVar.f1475l = bVar;
                } else {
                    oVar = null;
                }
                a3.close();
                xVar.c();
                return oVar;
            } catch (Throwable th) {
                th = th;
                a3.close();
                xVar.c();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            xVar = a2;
            a3.close();
            xVar.c();
            throw th;
        }
    }

    public List<String> b(String str) {
        x a2 = x.a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        Cursor a3 = this.f1491a.a((e) a2);
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

    public List<String> c() {
        x a2 = x.a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        Cursor a3 = this.f1491a.a((e) a2);
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

    public int a(String str, long j2) {
        f a2 = this.f1498h.a();
        this.f1491a.c();
        try {
            a2.a(1, j2);
            if (str == null) {
                a2.a(2);
            } else {
                a2.a(2, str);
            }
            int l2 = a2.l();
            this.f1491a.o();
            return l2;
        } finally {
            this.f1491a.e();
            this.f1498h.a(a2);
        }
    }

    public List<o> b() {
        x xVar;
        x a2 = x.a("SELECT * FROM workspec WHERE state=0", 0);
        Cursor a3 = this.f1491a.a((e) a2);
        try {
            int columnIndexOrThrow = a3.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = a3.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = a3.getColumnIndexOrThrow("worker_class_name");
            int columnIndexOrThrow4 = a3.getColumnIndexOrThrow("input_merger_class_name");
            int columnIndexOrThrow5 = a3.getColumnIndexOrThrow("input");
            int columnIndexOrThrow6 = a3.getColumnIndexOrThrow("output");
            int columnIndexOrThrow7 = a3.getColumnIndexOrThrow("initial_delay");
            int columnIndexOrThrow8 = a3.getColumnIndexOrThrow("interval_duration");
            int columnIndexOrThrow9 = a3.getColumnIndexOrThrow("flex_duration");
            int columnIndexOrThrow10 = a3.getColumnIndexOrThrow("run_attempt_count");
            int columnIndexOrThrow11 = a3.getColumnIndexOrThrow("backoff_policy");
            int columnIndexOrThrow12 = a3.getColumnIndexOrThrow("backoff_delay_duration");
            int columnIndexOrThrow13 = a3.getColumnIndexOrThrow("period_start_time");
            int columnIndexOrThrow14 = a3.getColumnIndexOrThrow("minimum_retention_duration");
            xVar = a2;
            try {
                int columnIndexOrThrow15 = a3.getColumnIndexOrThrow("schedule_requested_at");
                int columnIndexOrThrow16 = a3.getColumnIndexOrThrow("required_network_type");
                int i2 = columnIndexOrThrow14;
                int columnIndexOrThrow17 = a3.getColumnIndexOrThrow("requires_charging");
                int i3 = columnIndexOrThrow13;
                int columnIndexOrThrow18 = a3.getColumnIndexOrThrow("requires_device_idle");
                int i4 = columnIndexOrThrow12;
                int columnIndexOrThrow19 = a3.getColumnIndexOrThrow("requires_battery_not_low");
                int i5 = columnIndexOrThrow11;
                int columnIndexOrThrow20 = a3.getColumnIndexOrThrow("requires_storage_not_low");
                int i6 = columnIndexOrThrow10;
                int columnIndexOrThrow21 = a3.getColumnIndexOrThrow("trigger_content_update_delay");
                int i7 = columnIndexOrThrow9;
                int columnIndexOrThrow22 = a3.getColumnIndexOrThrow("trigger_max_content_delay");
                int i8 = columnIndexOrThrow8;
                int columnIndexOrThrow23 = a3.getColumnIndexOrThrow("content_uri_triggers");
                int i9 = columnIndexOrThrow7;
                int i10 = columnIndexOrThrow6;
                ArrayList arrayList = new ArrayList(a3.getCount());
                while (a3.moveToNext()) {
                    String string = a3.getString(columnIndexOrThrow);
                    int i11 = columnIndexOrThrow;
                    String string2 = a3.getString(columnIndexOrThrow3);
                    int i12 = columnIndexOrThrow3;
                    b bVar = new b();
                    int i13 = columnIndexOrThrow16;
                    bVar.a(F.b(a3.getInt(columnIndexOrThrow16)));
                    bVar.b(a3.getInt(columnIndexOrThrow17) != 0);
                    bVar.c(a3.getInt(columnIndexOrThrow18) != 0);
                    bVar.a(a3.getInt(columnIndexOrThrow19) != 0);
                    bVar.d(a3.getInt(columnIndexOrThrow20) != 0);
                    int i14 = columnIndexOrThrow18;
                    bVar.a(a3.getLong(columnIndexOrThrow21));
                    bVar.b(a3.getLong(columnIndexOrThrow22));
                    bVar.a(F.a(a3.getBlob(columnIndexOrThrow23)));
                    o oVar = new o(string, string2);
                    oVar.f1467d = F.c(a3.getInt(columnIndexOrThrow2));
                    oVar.f1469f = a3.getString(columnIndexOrThrow4);
                    oVar.f1470g = d.a(a3.getBlob(columnIndexOrThrow5));
                    int i15 = i10;
                    oVar.f1471h = d.a(a3.getBlob(i15));
                    i10 = i15;
                    int i16 = columnIndexOrThrow17;
                    int i17 = i9;
                    oVar.f1472i = a3.getLong(i17);
                    i9 = i17;
                    int i18 = i8;
                    oVar.f1473j = a3.getLong(i18);
                    i8 = i18;
                    int i19 = i7;
                    oVar.f1474k = a3.getLong(i19);
                    int i20 = i6;
                    oVar.m = a3.getInt(i20);
                    int i21 = i5;
                    i6 = i20;
                    oVar.n = F.a(a3.getInt(i21));
                    i7 = i19;
                    int i22 = i4;
                    int i23 = columnIndexOrThrow2;
                    oVar.o = a3.getLong(i22);
                    int i24 = i22;
                    i5 = i21;
                    int i25 = i3;
                    oVar.p = a3.getLong(i25);
                    i3 = i25;
                    int i26 = i2;
                    oVar.q = a3.getLong(i26);
                    i2 = i26;
                    int i27 = i24;
                    int i28 = columnIndexOrThrow15;
                    oVar.r = a3.getLong(i28);
                    oVar.f1475l = bVar;
                    arrayList.add(oVar);
                    columnIndexOrThrow15 = i28;
                    columnIndexOrThrow17 = i16;
                    columnIndexOrThrow = i11;
                    columnIndexOrThrow3 = i12;
                    columnIndexOrThrow18 = i14;
                    columnIndexOrThrow16 = i13;
                    int i29 = i23;
                    i4 = i27;
                    columnIndexOrThrow2 = i29;
                }
                a3.close();
                xVar.c();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                a3.close();
                xVar.c();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            xVar = a2;
            a3.close();
            xVar.c();
            throw th;
        }
    }

    public List<o.a> a(String str) {
        x a2 = x.a("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        Cursor a3 = this.f1491a.a((e) a2);
        try {
            int columnIndexOrThrow = a3.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = a3.getColumnIndexOrThrow("state");
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                o.a aVar = new o.a();
                aVar.f1476a = a3.getString(columnIndexOrThrow);
                aVar.f1477b = F.c(a3.getInt(columnIndexOrThrow2));
                arrayList.add(aVar);
            }
            return arrayList;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public List<o> a(int i2) {
        x xVar;
        x a2 = x.a("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        a2.a(1, (long) i2);
        Cursor a3 = this.f1491a.a((e) a2);
        try {
            int columnIndexOrThrow = a3.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = a3.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = a3.getColumnIndexOrThrow("worker_class_name");
            int columnIndexOrThrow4 = a3.getColumnIndexOrThrow("input_merger_class_name");
            int columnIndexOrThrow5 = a3.getColumnIndexOrThrow("input");
            int columnIndexOrThrow6 = a3.getColumnIndexOrThrow("output");
            int columnIndexOrThrow7 = a3.getColumnIndexOrThrow("initial_delay");
            int columnIndexOrThrow8 = a3.getColumnIndexOrThrow("interval_duration");
            int columnIndexOrThrow9 = a3.getColumnIndexOrThrow("flex_duration");
            int columnIndexOrThrow10 = a3.getColumnIndexOrThrow("run_attempt_count");
            int columnIndexOrThrow11 = a3.getColumnIndexOrThrow("backoff_policy");
            int columnIndexOrThrow12 = a3.getColumnIndexOrThrow("backoff_delay_duration");
            int columnIndexOrThrow13 = a3.getColumnIndexOrThrow("period_start_time");
            int columnIndexOrThrow14 = a3.getColumnIndexOrThrow("minimum_retention_duration");
            xVar = a2;
            try {
                int columnIndexOrThrow15 = a3.getColumnIndexOrThrow("schedule_requested_at");
                int columnIndexOrThrow16 = a3.getColumnIndexOrThrow("required_network_type");
                int i3 = columnIndexOrThrow14;
                int columnIndexOrThrow17 = a3.getColumnIndexOrThrow("requires_charging");
                int i4 = columnIndexOrThrow13;
                int columnIndexOrThrow18 = a3.getColumnIndexOrThrow("requires_device_idle");
                int i5 = columnIndexOrThrow12;
                int columnIndexOrThrow19 = a3.getColumnIndexOrThrow("requires_battery_not_low");
                int i6 = columnIndexOrThrow11;
                int columnIndexOrThrow20 = a3.getColumnIndexOrThrow("requires_storage_not_low");
                int i7 = columnIndexOrThrow10;
                int columnIndexOrThrow21 = a3.getColumnIndexOrThrow("trigger_content_update_delay");
                int i8 = columnIndexOrThrow9;
                int columnIndexOrThrow22 = a3.getColumnIndexOrThrow("trigger_max_content_delay");
                int i9 = columnIndexOrThrow8;
                int columnIndexOrThrow23 = a3.getColumnIndexOrThrow("content_uri_triggers");
                int i10 = columnIndexOrThrow7;
                int i11 = columnIndexOrThrow6;
                ArrayList arrayList = new ArrayList(a3.getCount());
                while (a3.moveToNext()) {
                    String string = a3.getString(columnIndexOrThrow);
                    int i12 = columnIndexOrThrow;
                    String string2 = a3.getString(columnIndexOrThrow3);
                    int i13 = columnIndexOrThrow3;
                    b bVar = new b();
                    int i14 = columnIndexOrThrow16;
                    bVar.a(F.b(a3.getInt(columnIndexOrThrow16)));
                    bVar.b(a3.getInt(columnIndexOrThrow17) != 0);
                    bVar.c(a3.getInt(columnIndexOrThrow18) != 0);
                    bVar.a(a3.getInt(columnIndexOrThrow19) != 0);
                    bVar.d(a3.getInt(columnIndexOrThrow20) != 0);
                    int i15 = columnIndexOrThrow18;
                    bVar.a(a3.getLong(columnIndexOrThrow21));
                    bVar.b(a3.getLong(columnIndexOrThrow22));
                    bVar.a(F.a(a3.getBlob(columnIndexOrThrow23)));
                    o oVar = new o(string, string2);
                    oVar.f1467d = F.c(a3.getInt(columnIndexOrThrow2));
                    oVar.f1469f = a3.getString(columnIndexOrThrow4);
                    oVar.f1470g = d.a(a3.getBlob(columnIndexOrThrow5));
                    int i16 = i11;
                    oVar.f1471h = d.a(a3.getBlob(i16));
                    i11 = i16;
                    int i17 = columnIndexOrThrow17;
                    int i18 = i10;
                    oVar.f1472i = a3.getLong(i18);
                    i10 = i18;
                    int i19 = i9;
                    oVar.f1473j = a3.getLong(i19);
                    i9 = i19;
                    int i20 = i8;
                    oVar.f1474k = a3.getLong(i20);
                    int i21 = i7;
                    oVar.m = a3.getInt(i21);
                    int i22 = i6;
                    i7 = i21;
                    oVar.n = F.a(a3.getInt(i22));
                    i8 = i20;
                    int i23 = i5;
                    int i24 = columnIndexOrThrow2;
                    oVar.o = a3.getLong(i23);
                    int i25 = i23;
                    i6 = i22;
                    int i26 = i4;
                    oVar.p = a3.getLong(i26);
                    i4 = i26;
                    int i27 = i3;
                    oVar.q = a3.getLong(i27);
                    int i28 = columnIndexOrThrow15;
                    i3 = i27;
                    int i29 = i25;
                    oVar.r = a3.getLong(i28);
                    oVar.f1475l = bVar;
                    arrayList.add(oVar);
                    columnIndexOrThrow15 = i28;
                    columnIndexOrThrow17 = i17;
                    columnIndexOrThrow = i12;
                    columnIndexOrThrow3 = i13;
                    columnIndexOrThrow18 = i15;
                    columnIndexOrThrow16 = i14;
                    int i30 = i24;
                    i5 = i29;
                    columnIndexOrThrow2 = i30;
                }
                a3.close();
                xVar.c();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                a3.close();
                xVar.c();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            xVar = a2;
            a3.close();
            xVar.c();
            throw th;
        }
    }

    public List<o> a() {
        x xVar;
        x a2 = x.a("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        Cursor a3 = this.f1491a.a((e) a2);
        try {
            int columnIndexOrThrow = a3.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = a3.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = a3.getColumnIndexOrThrow("worker_class_name");
            int columnIndexOrThrow4 = a3.getColumnIndexOrThrow("input_merger_class_name");
            int columnIndexOrThrow5 = a3.getColumnIndexOrThrow("input");
            int columnIndexOrThrow6 = a3.getColumnIndexOrThrow("output");
            int columnIndexOrThrow7 = a3.getColumnIndexOrThrow("initial_delay");
            int columnIndexOrThrow8 = a3.getColumnIndexOrThrow("interval_duration");
            int columnIndexOrThrow9 = a3.getColumnIndexOrThrow("flex_duration");
            int columnIndexOrThrow10 = a3.getColumnIndexOrThrow("run_attempt_count");
            int columnIndexOrThrow11 = a3.getColumnIndexOrThrow("backoff_policy");
            int columnIndexOrThrow12 = a3.getColumnIndexOrThrow("backoff_delay_duration");
            int columnIndexOrThrow13 = a3.getColumnIndexOrThrow("period_start_time");
            int columnIndexOrThrow14 = a3.getColumnIndexOrThrow("minimum_retention_duration");
            xVar = a2;
            try {
                int columnIndexOrThrow15 = a3.getColumnIndexOrThrow("schedule_requested_at");
                int columnIndexOrThrow16 = a3.getColumnIndexOrThrow("required_network_type");
                int i2 = columnIndexOrThrow14;
                int columnIndexOrThrow17 = a3.getColumnIndexOrThrow("requires_charging");
                int i3 = columnIndexOrThrow13;
                int columnIndexOrThrow18 = a3.getColumnIndexOrThrow("requires_device_idle");
                int i4 = columnIndexOrThrow12;
                int columnIndexOrThrow19 = a3.getColumnIndexOrThrow("requires_battery_not_low");
                int i5 = columnIndexOrThrow11;
                int columnIndexOrThrow20 = a3.getColumnIndexOrThrow("requires_storage_not_low");
                int i6 = columnIndexOrThrow10;
                int columnIndexOrThrow21 = a3.getColumnIndexOrThrow("trigger_content_update_delay");
                int i7 = columnIndexOrThrow9;
                int columnIndexOrThrow22 = a3.getColumnIndexOrThrow("trigger_max_content_delay");
                int i8 = columnIndexOrThrow8;
                int columnIndexOrThrow23 = a3.getColumnIndexOrThrow("content_uri_triggers");
                int i9 = columnIndexOrThrow7;
                int i10 = columnIndexOrThrow6;
                ArrayList arrayList = new ArrayList(a3.getCount());
                while (a3.moveToNext()) {
                    String string = a3.getString(columnIndexOrThrow);
                    int i11 = columnIndexOrThrow;
                    String string2 = a3.getString(columnIndexOrThrow3);
                    int i12 = columnIndexOrThrow3;
                    b bVar = new b();
                    int i13 = columnIndexOrThrow16;
                    bVar.a(F.b(a3.getInt(columnIndexOrThrow16)));
                    bVar.b(a3.getInt(columnIndexOrThrow17) != 0);
                    bVar.c(a3.getInt(columnIndexOrThrow18) != 0);
                    bVar.a(a3.getInt(columnIndexOrThrow19) != 0);
                    bVar.d(a3.getInt(columnIndexOrThrow20) != 0);
                    int i14 = columnIndexOrThrow18;
                    bVar.a(a3.getLong(columnIndexOrThrow21));
                    bVar.b(a3.getLong(columnIndexOrThrow22));
                    bVar.a(F.a(a3.getBlob(columnIndexOrThrow23)));
                    o oVar = new o(string, string2);
                    oVar.f1467d = F.c(a3.getInt(columnIndexOrThrow2));
                    oVar.f1469f = a3.getString(columnIndexOrThrow4);
                    oVar.f1470g = d.a(a3.getBlob(columnIndexOrThrow5));
                    int i15 = i10;
                    oVar.f1471h = d.a(a3.getBlob(i15));
                    i10 = i15;
                    int i16 = columnIndexOrThrow17;
                    int i17 = i9;
                    oVar.f1472i = a3.getLong(i17);
                    i9 = i17;
                    int i18 = i8;
                    oVar.f1473j = a3.getLong(i18);
                    i8 = i18;
                    int i19 = i7;
                    oVar.f1474k = a3.getLong(i19);
                    int i20 = i6;
                    oVar.m = a3.getInt(i20);
                    int i21 = i5;
                    i6 = i20;
                    oVar.n = F.a(a3.getInt(i21));
                    i7 = i19;
                    int i22 = i4;
                    int i23 = columnIndexOrThrow2;
                    oVar.o = a3.getLong(i22);
                    int i24 = i22;
                    i5 = i21;
                    int i25 = i3;
                    oVar.p = a3.getLong(i25);
                    i3 = i25;
                    int i26 = i2;
                    oVar.q = a3.getLong(i26);
                    i2 = i26;
                    int i27 = i24;
                    int i28 = columnIndexOrThrow15;
                    oVar.r = a3.getLong(i28);
                    oVar.f1475l = bVar;
                    arrayList.add(oVar);
                    columnIndexOrThrow15 = i28;
                    columnIndexOrThrow17 = i16;
                    columnIndexOrThrow = i11;
                    columnIndexOrThrow3 = i12;
                    columnIndexOrThrow18 = i14;
                    columnIndexOrThrow16 = i13;
                    int i29 = i23;
                    i4 = i27;
                    columnIndexOrThrow2 = i29;
                }
                a3.close();
                xVar.c();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                a3.close();
                xVar.c();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            xVar = a2;
            a3.close();
            xVar.c();
            throw th;
        }
    }

    public int a(WorkInfo.State state, String... strArr) {
        StringBuilder a2 = c.a();
        a2.append("UPDATE workspec SET state=");
        a2.append("?");
        a2.append(" WHERE id IN (");
        c.a(a2, strArr.length);
        a2.append(")");
        f a3 = this.f1491a.a(a2.toString());
        a3.a(1, (long) F.a(state));
        int i2 = 2;
        for (String str : strArr) {
            if (str == null) {
                a3.a(i2);
            } else {
                a3.a(i2, str);
            }
            i2++;
        }
        this.f1491a.c();
        try {
            int l2 = a3.l();
            this.f1491a.o();
            return l2;
        } finally {
            this.f1491a.e();
        }
    }

    public final void a(C0243b<String, ArrayList<String>> bVar) {
        int i2;
        Set<String> keySet = bVar.keySet();
        if (!keySet.isEmpty()) {
            if (bVar.size() > 999) {
                C0243b bVar2 = new C0243b(999);
                int size = bVar.size();
                C0243b bVar3 = bVar2;
                int i3 = 0;
                loop0:
                while (true) {
                    i2 = 0;
                    while (i3 < size) {
                        bVar3.put(bVar.c(i3), bVar.e(i3));
                        i3++;
                        i2++;
                        if (i2 == 999) {
                            a((C0243b<String, ArrayList<String>>) bVar3);
                            bVar3 = new C0243b(999);
                        }
                    }
                    break loop0;
                }
                if (i2 > 0) {
                    a((C0243b<String, ArrayList<String>>) bVar3);
                }
                return;
            }
            StringBuilder a2 = c.a();
            a2.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
            int size2 = keySet.size();
            c.a(a2, size2);
            a2.append(")");
            x a3 = x.a(a2.toString(), size2 + 0);
            int i4 = 1;
            for (String next : keySet) {
                if (next == null) {
                    a3.a(i4);
                } else {
                    a3.a(i4, next);
                }
                i4++;
            }
            Cursor a4 = this.f1491a.a((e) a3);
            try {
                int columnIndex = a4.getColumnIndex("work_spec_id");
                if (columnIndex != -1) {
                    while (a4.moveToNext()) {
                        if (!a4.isNull(columnIndex)) {
                            ArrayList arrayList = bVar.get(a4.getString(columnIndex));
                            if (arrayList != null) {
                                arrayList.add(a4.getString(0));
                            }
                        }
                    }
                    a4.close();
                }
            } finally {
                a4.close();
            }
        }
    }
}
