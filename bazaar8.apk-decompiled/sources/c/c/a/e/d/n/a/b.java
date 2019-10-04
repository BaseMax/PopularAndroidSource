package c.c.a.e.d.n.a;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0356e;
import c.c.a.e.f.h;

/* compiled from: PlayedVideoDao_Impl */
class b extends C0356e<f> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ e f5296d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(e eVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5296d = eVar;
    }

    public String d() {
        return "INSERT OR REPLACE INTO `played_video`(`entityId`,`title`,`cover`,`serialId`,`episodeIdx`,`seasonIdx`,`type`,`isLive`,`date`,`seasonEpisodeTitle`,`providerName`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
    }

    public void a(f fVar, f fVar2) {
        if (fVar2.c() == null) {
            fVar.a(1);
        } else {
            fVar.a(1, fVar2.c());
        }
        if (fVar2.i() == null) {
            fVar.a(2);
        } else {
            fVar.a(2, fVar2.i());
        }
        if (fVar2.a() == null) {
            fVar.a(3);
        } else {
            fVar.a(3, fVar2.a());
        }
        if (fVar2.h() == null) {
            fVar.a(4);
        } else {
            fVar.a(4, fVar2.h());
        }
        if (fVar2.d() == null) {
            fVar.a(5);
        } else {
            fVar.a(5, (long) fVar2.d().intValue());
        }
        if (fVar2.g() == null) {
            fVar.a(6);
        } else {
            fVar.a(6, (long) fVar2.g().intValue());
        }
        Integer a2 = h.a(fVar2.j());
        if (a2 == null) {
            fVar.a(7);
        } else {
            fVar.a(7, (long) a2.intValue());
        }
        fVar.a(8, fVar2.k() ? 1 : 0);
        fVar.a(9, fVar2.b());
        if (fVar2.f() == null) {
            fVar.a(10);
        } else {
            fVar.a(10, fVar2.f());
        }
        if (fVar2.e() == null) {
            fVar.a(11);
        } else {
            fVar.a(11, fVar2.e());
        }
    }
}
