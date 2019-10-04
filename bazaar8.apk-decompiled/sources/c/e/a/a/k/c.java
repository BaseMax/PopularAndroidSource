package c.e.a.a.k;

import c.e.a.a.c.i;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.nio.ByteBuffer;

/* compiled from: SimpleSubtitleDecoder */
public abstract class c extends i<i, j, SubtitleDecoderException> implements f {
    public final String n;

    public c(String str) {
        super(new i[2], new j[2]);
        this.n = str;
        a(1024);
    }

    public abstract e a(byte[] bArr, int i2, boolean z);

    public void a(long j2) {
    }

    public final i e() {
        return new i();
    }

    public final j f() {
        return new d(this);
    }

    public final SubtitleDecoderException a(Throwable th) {
        return new SubtitleDecoderException("Unexpected decode error", th);
    }

    public final void a(j jVar) {
        super.a(jVar);
    }

    public final SubtitleDecoderException a(i iVar, j jVar, boolean z) {
        try {
            ByteBuffer byteBuffer = iVar.f7545c;
            j jVar2 = jVar;
            jVar2.a(iVar.f7546d, a(byteBuffer.array(), byteBuffer.limit(), z), iVar.f9287f);
            jVar.c(Integer.MIN_VALUE);
            return null;
        } catch (SubtitleDecoderException e2) {
            return e2;
        }
    }
}
