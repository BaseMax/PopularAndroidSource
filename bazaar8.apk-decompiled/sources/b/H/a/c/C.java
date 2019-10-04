package b.H.a.c;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0356e;

/* compiled from: WorkTagDao_Impl */
class C extends C0356e<A> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ D f1438d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C(D d2, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f1438d = d2;
    }

    public String d() {
        return "INSERT OR IGNORE INTO `WorkTag`(`tag`,`work_spec_id`) VALUES (?,?)";
    }

    public void a(f fVar, A a2) {
        String str = a2.f1436a;
        if (str == null) {
            fVar.a(1);
        } else {
            fVar.a(1, str);
        }
        String str2 = a2.f1437b;
        if (str2 == null) {
            fVar.a(2);
        } else {
            fVar.a(2, str2);
        }
    }
}
