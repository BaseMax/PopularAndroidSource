package c.e.a.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import c.e.a.a.b.q;
import c.e.a.a.d.l;
import c.e.a.a.d.p;
import c.e.a.a.f.c;
import c.e.a.a.g.f;
import c.e.a.a.g.g;
import c.e.a.a.k.k;
import c.e.a.a.p.a.b;
import c.e.a.a.p.n;
import c.e.a.a.p.s;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.util.ArrayList;

/* renamed from: c.e.a.a.v  reason: case insensitive filesystem */
/* compiled from: DefaultRenderersFactory */
public class C0748v implements U {

    /* renamed from: a  reason: collision with root package name */
    public final Context f9749a;

    /* renamed from: b  reason: collision with root package name */
    public l<p> f9750b;

    /* renamed from: c  reason: collision with root package name */
    public int f9751c = 0;

    /* renamed from: d  reason: collision with root package name */
    public long f9752d = 5000;

    /* renamed from: e  reason: collision with root package name */
    public boolean f9753e;

    /* renamed from: f  reason: collision with root package name */
    public c f9754f = c.f8341a;

    public C0748v(Context context) {
        this.f9749a = context;
    }

    public void a(Context context, Handler handler, int i2, ArrayList<Q> arrayList) {
    }

    public Q[] a(Handler handler, s sVar, q qVar, k kVar, f fVar, l<p> lVar) {
        l<p> lVar2 = lVar == null ? this.f9750b : lVar;
        ArrayList arrayList = new ArrayList();
        l<p> lVar3 = lVar2;
        a(this.f9749a, this.f9751c, this.f9754f, lVar3, this.f9753e, handler, sVar, this.f9752d, (ArrayList<Q>) arrayList);
        a(this.f9749a, this.f9751c, this.f9754f, lVar3, this.f9753e, a(), handler, qVar, (ArrayList<Q>) arrayList);
        ArrayList arrayList2 = arrayList;
        a(this.f9749a, kVar, handler.getLooper(), this.f9751c, (ArrayList<Q>) arrayList2);
        a(this.f9749a, fVar, handler.getLooper(), this.f9751c, (ArrayList<Q>) arrayList2);
        a(this.f9749a, this.f9751c, arrayList);
        Handler handler2 = handler;
        a(this.f9749a, handler, this.f9751c, arrayList);
        return (Q[]) arrayList.toArray(new Q[0]);
    }

    public void a(Context context, int i2, c cVar, l<p> lVar, boolean z, Handler handler, s sVar, long j2, ArrayList<Q> arrayList) {
        int i3 = i2;
        ArrayList<Q> arrayList2 = arrayList;
        n nVar = new n(context, cVar, j2, lVar, z, handler, sVar, 50);
        arrayList2.add(nVar);
        if (i3 != 0) {
            int size = arrayList.size();
            if (i3 == 2) {
                size--;
            }
            try {
                arrayList2.add(size, (Q) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(new Class[]{Long.TYPE, Handler.class, s.class, Integer.TYPE}).newInstance(new Object[]{Long.valueOf(j2), handler, sVar, 50}));
                c.e.a.a.o.p.c("DefaultRenderersFactory", "Loaded LibvpxVideoRenderer.");
            } catch (ClassNotFoundException unused) {
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating VP9 extension", e2);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x005f, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0067, code lost:
        throw new java.lang.RuntimeException("Error instantiating Opus extension", r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x009a, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00a2, code lost:
        throw new java.lang.RuntimeException("Error instantiating FLAC extension", r0);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x005f A[ExcHandler: Exception (r0v16 'e' java.lang.Exception A[CUSTOM_DECLARE]), Splitter:B:7:0x0030] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x009a A[ExcHandler: Exception (r0v10 'e' java.lang.Exception A[CUSTOM_DECLARE]), Splitter:B:19:0x006b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.content.Context r14, int r15, c.e.a.a.f.c r16, c.e.a.a.d.l<c.e.a.a.d.p> r17, boolean r18, com.google.android.exoplayer2.audio.AudioProcessor[] r19, android.os.Handler r20, c.e.a.a.b.q r21, java.util.ArrayList<c.e.a.a.Q> r22) {
        /*
            r13 = this;
            r0 = r15
            r10 = r22
            java.lang.String r11 = "DefaultRenderersFactory"
            c.e.a.a.b.B r12 = new c.e.a.a.b.B
            c.e.a.a.b.m r8 = c.e.a.a.b.m.a((android.content.Context) r14)
            r1 = r12
            r2 = r14
            r3 = r16
            r4 = r17
            r5 = r18
            r6 = r20
            r7 = r21
            r9 = r19
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            r10.add(r12)
            if (r0 != 0) goto L_0x0022
            return
        L_0x0022:
            int r1 = r22.size()
            r2 = 2
            if (r0 != r2) goto L_0x002b
            int r1 = r1 + -1
        L_0x002b:
            java.lang.String r0 = "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"
            r3 = 0
            r4 = 3
            r5 = 1
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ ClassNotFoundException -> 0x0068, Exception -> 0x005f }
            java.lang.Class[] r6 = new java.lang.Class[r4]     // Catch:{ ClassNotFoundException -> 0x0068, Exception -> 0x005f }
            java.lang.Class<android.os.Handler> r7 = android.os.Handler.class
            r6[r3] = r7     // Catch:{ ClassNotFoundException -> 0x0068, Exception -> 0x005f }
            java.lang.Class<c.e.a.a.b.q> r7 = c.e.a.a.b.q.class
            r6[r5] = r7     // Catch:{ ClassNotFoundException -> 0x0068, Exception -> 0x005f }
            java.lang.Class<com.google.android.exoplayer2.audio.AudioProcessor[]> r7 = com.google.android.exoplayer2.audio.AudioProcessor[].class
            r6[r2] = r7     // Catch:{ ClassNotFoundException -> 0x0068, Exception -> 0x005f }
            java.lang.reflect.Constructor r0 = r0.getConstructor(r6)     // Catch:{ ClassNotFoundException -> 0x0068, Exception -> 0x005f }
            java.lang.Object[] r6 = new java.lang.Object[r4]     // Catch:{ ClassNotFoundException -> 0x0068, Exception -> 0x005f }
            r6[r3] = r20     // Catch:{ ClassNotFoundException -> 0x0068, Exception -> 0x005f }
            r6[r5] = r21     // Catch:{ ClassNotFoundException -> 0x0068, Exception -> 0x005f }
            r6[r2] = r19     // Catch:{ ClassNotFoundException -> 0x0068, Exception -> 0x005f }
            java.lang.Object r0 = r0.newInstance(r6)     // Catch:{ ClassNotFoundException -> 0x0068, Exception -> 0x005f }
            c.e.a.a.Q r0 = (c.e.a.a.Q) r0     // Catch:{ ClassNotFoundException -> 0x0068, Exception -> 0x005f }
            int r6 = r1 + 1
            r10.add(r1, r0)     // Catch:{ ClassNotFoundException -> 0x0069, Exception -> 0x005f }
            java.lang.String r0 = "Loaded LibopusAudioRenderer."
            c.e.a.a.o.p.c(r11, r0)     // Catch:{ ClassNotFoundException -> 0x0069, Exception -> 0x005f }
            goto L_0x0069
        L_0x005f:
            r0 = move-exception
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            java.lang.String r2 = "Error instantiating Opus extension"
            r1.<init>(r2, r0)
            throw r1
        L_0x0068:
            r6 = r1
        L_0x0069:
            java.lang.String r0 = "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ ClassNotFoundException -> 0x00a3, Exception -> 0x009a }
            java.lang.Class[] r1 = new java.lang.Class[r4]     // Catch:{ ClassNotFoundException -> 0x00a3, Exception -> 0x009a }
            java.lang.Class<android.os.Handler> r7 = android.os.Handler.class
            r1[r3] = r7     // Catch:{ ClassNotFoundException -> 0x00a3, Exception -> 0x009a }
            java.lang.Class<c.e.a.a.b.q> r7 = c.e.a.a.b.q.class
            r1[r5] = r7     // Catch:{ ClassNotFoundException -> 0x00a3, Exception -> 0x009a }
            java.lang.Class<com.google.android.exoplayer2.audio.AudioProcessor[]> r7 = com.google.android.exoplayer2.audio.AudioProcessor[].class
            r1[r2] = r7     // Catch:{ ClassNotFoundException -> 0x00a3, Exception -> 0x009a }
            java.lang.reflect.Constructor r0 = r0.getConstructor(r1)     // Catch:{ ClassNotFoundException -> 0x00a3, Exception -> 0x009a }
            java.lang.Object[] r1 = new java.lang.Object[r4]     // Catch:{ ClassNotFoundException -> 0x00a3, Exception -> 0x009a }
            r1[r3] = r20     // Catch:{ ClassNotFoundException -> 0x00a3, Exception -> 0x009a }
            r1[r5] = r21     // Catch:{ ClassNotFoundException -> 0x00a3, Exception -> 0x009a }
            r1[r2] = r19     // Catch:{ ClassNotFoundException -> 0x00a3, Exception -> 0x009a }
            java.lang.Object r0 = r0.newInstance(r1)     // Catch:{ ClassNotFoundException -> 0x00a3, Exception -> 0x009a }
            c.e.a.a.Q r0 = (c.e.a.a.Q) r0     // Catch:{ ClassNotFoundException -> 0x00a3, Exception -> 0x009a }
            int r1 = r6 + 1
            r10.add(r6, r0)     // Catch:{ ClassNotFoundException -> 0x00a4, Exception -> 0x009a }
            java.lang.String r0 = "Loaded LibflacAudioRenderer."
            c.e.a.a.o.p.c(r11, r0)     // Catch:{ ClassNotFoundException -> 0x00a4, Exception -> 0x009a }
            goto L_0x00a4
        L_0x009a:
            r0 = move-exception
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            java.lang.String r2 = "Error instantiating FLAC extension"
            r1.<init>(r2, r0)
            throw r1
        L_0x00a3:
            r1 = r6
        L_0x00a4:
            java.lang.String r0 = "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            java.lang.Class[] r6 = new java.lang.Class[r4]     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            java.lang.Class<android.os.Handler> r7 = android.os.Handler.class
            r6[r3] = r7     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            java.lang.Class<c.e.a.a.b.q> r7 = c.e.a.a.b.q.class
            r6[r5] = r7     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            java.lang.Class<com.google.android.exoplayer2.audio.AudioProcessor[]> r7 = com.google.android.exoplayer2.audio.AudioProcessor[].class
            r6[r2] = r7     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            java.lang.reflect.Constructor r0 = r0.getConstructor(r6)     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            r4[r3] = r20     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            r4[r5] = r21     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            r4[r2] = r19     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            java.lang.Object r0 = r0.newInstance(r4)     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            c.e.a.a.Q r0 = (c.e.a.a.Q) r0     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            r10.add(r1, r0)     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            java.lang.String r0 = "Loaded FfmpegAudioRenderer."
            c.e.a.a.o.p.c(r11, r0)     // Catch:{ ClassNotFoundException -> 0x00dc, Exception -> 0x00d3 }
            goto L_0x00dc
        L_0x00d3:
            r0 = move-exception
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            java.lang.String r2 = "Error instantiating FFmpeg extension"
            r1.<init>(r2, r0)
            throw r1
        L_0x00dc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.C0748v.a(android.content.Context, int, c.e.a.a.f.c, c.e.a.a.d.l, boolean, com.google.android.exoplayer2.audio.AudioProcessor[], android.os.Handler, c.e.a.a.b.q, java.util.ArrayList):void");
    }

    public void a(Context context, k kVar, Looper looper, int i2, ArrayList<Q> arrayList) {
        arrayList.add(new c.e.a.a.k.l(kVar, looper));
    }

    public void a(Context context, f fVar, Looper looper, int i2, ArrayList<Q> arrayList) {
        arrayList.add(new g(fVar, looper));
    }

    public void a(Context context, int i2, ArrayList<Q> arrayList) {
        arrayList.add(new b());
    }

    public AudioProcessor[] a() {
        return new AudioProcessor[0];
    }
}
