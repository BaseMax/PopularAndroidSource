package c.c.a.e.d.d.a;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0356e;
import c.c.a.e.f.b;
import c.c.a.e.f.e;

/* compiled from: BookmarkDao_Impl */
class c extends C0356e<j> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ i f5036d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(i iVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5036d = iVar;
    }

    public String d() {
        return "INSERT OR REPLACE INTO `bookmark`(`entityId`,`iconUrl`,`entityName`,`price`,`priceString`,`bookmarkStatus`,`entityDatabaseStatus`) VALUES (?,?,?,?,?,?,?)";
    }

    public void a(f fVar, j jVar) {
        if (jVar.c() == null) {
            fVar.a(1);
        } else {
            fVar.a(1, jVar.c());
        }
        if (jVar.e() == null) {
            fVar.a(2);
        } else {
            fVar.a(2, jVar.e());
        }
        if (jVar.d() == null) {
            fVar.a(3);
        } else {
            fVar.a(3, jVar.d());
        }
        fVar.a(4, (long) jVar.f());
        if (jVar.g() == null) {
            fVar.a(5);
        } else {
            fVar.a(5, jVar.g());
        }
        Integer a2 = b.a(jVar.a());
        if (a2 == null) {
            fVar.a(6);
        } else {
            fVar.a(6, (long) a2.intValue());
        }
        Integer a3 = e.a(jVar.b());
        if (a3 == null) {
            fVar.a(7);
        } else {
            fVar.a(7, (long) a3.intValue());
        }
    }
}
