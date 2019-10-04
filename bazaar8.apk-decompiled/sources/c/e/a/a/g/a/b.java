package c.e.a.a.g.a;

import c.e.a.a.g.e;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: EventMessageDecoder */
public final class b implements c.e.a.a.g.b {
    public Metadata a(e eVar) {
        ByteBuffer byteBuffer = eVar.f7545c;
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        v vVar = new v(array, limit);
        String r = vVar.r();
        C0737e.a(r);
        String str = r;
        String r2 = vVar.r();
        C0737e.a(r2);
        String str2 = r2;
        long w = vVar.w();
        long w2 = vVar.w();
        if (w2 != 0) {
            p.d("EventMessageDecoder", "Ignoring non-zero presentation_time_delta: " + w2);
        }
        EventMessage eventMessage = new EventMessage(str, str2, I.c(vVar.w(), 1000, w), vVar.w(), Arrays.copyOfRange(array, vVar.c(), limit));
        return new Metadata(eventMessage);
    }
}
