package c.c.a.e.d.b;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0355d;
import com.farsitel.bazaar.data.entity.MaliciousAppEntity;

/* renamed from: c.c.a.e.d.b.q  reason: case insensitive filesystem */
/* compiled from: MaliciousAppDao_Impl */
class C0387q extends C0355d<MaliciousAppEntity> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0392w f5007d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0387q(C0392w wVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5007d = wVar;
    }

    public String d() {
        return "UPDATE OR ABORT `malicious_app` SET `packageName` = ?,`versionName` = ?,`versionCode` = ?,`reasonTitle` = ?,`reasonInfo` = ?,`isNotified` = ? WHERE `packageName` = ?";
    }

    public void a(f fVar, MaliciousAppEntity maliciousAppEntity) {
        if (maliciousAppEntity.getPackageName() == null) {
            fVar.a(1);
        } else {
            fVar.a(1, maliciousAppEntity.getPackageName());
        }
        if (maliciousAppEntity.getVersionName() == null) {
            fVar.a(2);
        } else {
            fVar.a(2, maliciousAppEntity.getVersionName());
        }
        fVar.a(3, maliciousAppEntity.getVersionCode());
        if (maliciousAppEntity.getReasonTitle() == null) {
            fVar.a(4);
        } else {
            fVar.a(4, maliciousAppEntity.getReasonTitle());
        }
        if (maliciousAppEntity.getReasonInfo() == null) {
            fVar.a(5);
        } else {
            fVar.a(5, maliciousAppEntity.getReasonInfo());
        }
        fVar.a(6, maliciousAppEntity.isNotified() ? 1 : 0);
        if (maliciousAppEntity.getPackageName() == null) {
            fVar.a(7);
        } else {
            fVar.a(7, maliciousAppEntity.getPackageName());
        }
    }
}
