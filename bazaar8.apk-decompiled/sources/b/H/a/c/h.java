package b.H.a.c;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: SystemIdInfoDao_Impl */
class h extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ i f1455d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public h(i iVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f1455d = iVar;
    }

    public String d() {
        return "DELETE FROM SystemIdInfo where work_spec_id=?";
    }
}
