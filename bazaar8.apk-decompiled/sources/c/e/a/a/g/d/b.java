package c.e.a.a.g.d;

import c.e.a.a.g.e;
import c.e.a.a.o.F;
import c.e.a.a.o.u;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.scte35.PrivateCommand;
import com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand;
import com.google.android.exoplayer2.metadata.scte35.SpliceNullCommand;
import com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand;
import com.google.android.exoplayer2.metadata.scte35.TimeSignalCommand;
import java.nio.ByteBuffer;

/* compiled from: SpliceInfoDecoder */
public final class b implements c.e.a.a.g.b {

    /* renamed from: a  reason: collision with root package name */
    public final v f8354a = new v();

    /* renamed from: b  reason: collision with root package name */
    public final u f8355b = new u();

    /* renamed from: c  reason: collision with root package name */
    public F f8356c;

    public Metadata a(e eVar) {
        F f2 = this.f8356c;
        if (f2 == null || eVar.f8357f != f2.c()) {
            this.f8356c = new F(eVar.f7546d);
            this.f8356c.a(eVar.f7546d - eVar.f8357f);
        }
        ByteBuffer byteBuffer = eVar.f7545c;
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f8354a.a(array, limit);
        this.f8355b.a(array, limit);
        this.f8355b.c(39);
        long a2 = (((long) this.f8355b.a(1)) << 32) | ((long) this.f8355b.a(32));
        this.f8355b.c(20);
        int a3 = this.f8355b.a(12);
        int a4 = this.f8355b.a(8);
        Metadata.Entry entry = null;
        this.f8354a.f(14);
        if (a4 == 0) {
            entry = new SpliceNullCommand();
        } else if (a4 == 255) {
            entry = PrivateCommand.a(this.f8354a, a3, a2);
        } else if (a4 == 4) {
            entry = SpliceScheduleCommand.a(this.f8354a);
        } else if (a4 == 5) {
            entry = SpliceInsertCommand.a(this.f8354a, a2, this.f8356c);
        } else if (a4 == 6) {
            entry = TimeSignalCommand.a(this.f8354a, a2, this.f8356c);
        }
        if (entry == null) {
            return new Metadata(new Metadata.Entry[0]);
        }
        return new Metadata(entry);
    }
}
