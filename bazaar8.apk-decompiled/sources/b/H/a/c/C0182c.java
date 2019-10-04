package b.H.a.c;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0356e;

/* renamed from: b.H.a.c.c  reason: case insensitive filesystem */
/* compiled from: DependencyDao_Impl */
class C0182c extends C0356e<C0180a> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0183d f1449d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0182c(C0183d dVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f1449d = dVar;
    }

    public String d() {
        return "INSERT OR IGNORE INTO `Dependency`(`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
    }

    public void a(f fVar, C0180a aVar) {
        String str = aVar.f1447a;
        if (str == null) {
            fVar.a(1);
        } else {
            fVar.a(1, str);
        }
        String str2 = aVar.f1448b;
        if (str2 == null) {
            fVar.a(2);
        } else {
            fVar.a(2, str2);
        }
    }
}
