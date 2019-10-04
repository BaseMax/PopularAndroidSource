package b.H.a.c;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0356e;

/* compiled from: WorkNameDao_Impl */
class l extends C0356e<j> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ m f1461d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public l(m mVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f1461d = mVar;
    }

    public String d() {
        return "INSERT OR IGNORE INTO `WorkName`(`name`,`work_spec_id`) VALUES (?,?)";
    }

    public void a(f fVar, j jVar) {
        String str = jVar.f1459a;
        if (str == null) {
            fVar.a(1);
        } else {
            fVar.a(1, str);
        }
        String str2 = jVar.f1460b;
        if (str2 == null) {
            fVar.a(2);
        } else {
            fVar.a(2, str2);
        }
    }
}
