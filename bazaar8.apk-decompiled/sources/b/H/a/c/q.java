package b.H.a.c;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.H.b;
import b.H.d;
import b.z.C0356e;

/* compiled from: WorkSpecDao_Impl */
class q extends C0356e<o> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ z f1482d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public q(z zVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f1482d = zVar;
    }

    public String d() {
        return "INSERT OR IGNORE INTO `WorkSpec`(`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    }

    public void a(f fVar, o oVar) {
        String str = oVar.f1466c;
        if (str == null) {
            fVar.a(1);
        } else {
            fVar.a(1, str);
        }
        fVar.a(2, (long) F.a(oVar.f1467d));
        String str2 = oVar.f1468e;
        if (str2 == null) {
            fVar.a(3);
        } else {
            fVar.a(3, str2);
        }
        String str3 = oVar.f1469f;
        if (str3 == null) {
            fVar.a(4);
        } else {
            fVar.a(4, str3);
        }
        byte[] a2 = d.a(oVar.f1470g);
        if (a2 == null) {
            fVar.a(5);
        } else {
            fVar.a(5, a2);
        }
        byte[] a3 = d.a(oVar.f1471h);
        if (a3 == null) {
            fVar.a(6);
        } else {
            fVar.a(6, a3);
        }
        fVar.a(7, oVar.f1472i);
        fVar.a(8, oVar.f1473j);
        fVar.a(9, oVar.f1474k);
        fVar.a(10, (long) oVar.m);
        fVar.a(11, (long) F.a(oVar.n));
        fVar.a(12, oVar.o);
        fVar.a(13, oVar.p);
        fVar.a(14, oVar.q);
        fVar.a(15, oVar.r);
        b bVar = oVar.f1475l;
        if (bVar != null) {
            fVar.a(16, (long) F.a(bVar.b()));
            fVar.a(17, bVar.g() ? 1 : 0);
            fVar.a(18, bVar.h() ? 1 : 0);
            fVar.a(19, bVar.f() ? 1 : 0);
            fVar.a(20, bVar.i() ? 1 : 0);
            fVar.a(21, bVar.c());
            fVar.a(22, bVar.d());
            byte[] a4 = F.a(bVar.a());
            if (a4 == null) {
                fVar.a(23);
            } else {
                fVar.a(23, a4);
            }
        } else {
            fVar.a(16);
            fVar.a(17);
            fVar.a(18);
            fVar.a(19);
            fVar.a(20);
            fVar.a(21);
            fVar.a(22);
            fVar.a(23);
        }
    }
}
