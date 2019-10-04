package com.farsitel.bazaar.player;

import android.content.Context;
import android.net.Uri;
import androidx.lifecycle.LiveData;
import b.b.a.C0202m;
import b.o.a.C0285i;
import b.r.E;
import b.r.F;
import b.r.G;
import b.r.j;
import b.r.t;
import c.c.a.d.f.p;
import c.c.a.l.C0661a;
import c.c.a.l.b.b;
import c.c.a.l.e;
import c.c.a.l.f;
import c.c.a.l.m;
import c.e.a.a.K;
import c.e.a.a.M;
import c.e.a.a.N;
import c.e.a.a.X;
import c.e.a.a.Z;
import c.e.a.a.j.I;
import c.e.a.a.j.c.f;
import c.e.a.a.j.d.m;
import c.e.a.a.j.e.f;
import c.e.a.a.j.v;
import c.e.a.a.j.z;
import c.e.a.a.l.c;
import c.e.a.a.l.o;
import c.e.a.a.n.j;
import c.e.a.a.n.l;
import c.e.a.a.n.q;
import com.crashlytics.android.answers.SessionEvent;
import com.farsitel.bazaar.common.model.VideoSubtitle;
import com.farsitel.bazaar.common.model.cinema.RefreshData;
import com.farsitel.bazaar.player.datasource.EncryptedFileDataSource;
import com.farsitel.bazaar.player.view.PlaybackState;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.ui.PlayerView;
import h.a.u;
import h.d;
import h.f.b.k;
import h.i.i;
import i.a.C1103g;
import i.a.C1125ra;
import j.I;
import j.L;
import j.S;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.json.JSONObject;

/* compiled from: CafePlayer.kt */
public final class CafePlayer extends p implements j, M.b {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ i[] f12299d;

    /* renamed from: e  reason: collision with root package name */
    public static final a f12300e = new a(null);
    public WeakReference<PlayerView> A;
    public final e B = new e(this.L);
    public final DefaultTrackSelector C = new DefaultTrackSelector(new c.C0119c());
    public final c.c.a.l.a.e D = new c.c.a.l.a.e(this.C);
    public v E;
    public long F = -9223372036854775807L;
    public Timer G;
    public TimerTask H;
    public c.c.a.l.b.a I;
    public final h.c J = d.a(new CafePlayer$defaultDataSourceFactory$2(this));
    public final Context K;
    public final f L;
    public final I M;
    public final b N;

    /* renamed from: f  reason: collision with root package name */
    public final t<PlaybackState> f12301f;

    /* renamed from: g  reason: collision with root package name */
    public final LiveData<PlaybackState> f12302g = this.f12301f;

    /* renamed from: h  reason: collision with root package name */
    public final t<Boolean> f12303h = new t<>();

    /* renamed from: i  reason: collision with root package name */
    public final LiveData<Boolean> f12304i = this.f12303h;

    /* renamed from: j  reason: collision with root package name */
    public final t<List<c.c.a.l.a.c>> f12305j = new t<>();

    /* renamed from: k  reason: collision with root package name */
    public final LiveData<List<c.c.a.l.a.c>> f12306k = this.f12305j;

    /* renamed from: l  reason: collision with root package name */
    public final t<List<c.c.a.l.a.c>> f12307l = new t<>();
    public final LiveData<List<c.c.a.l.a.c>> m = this.f12307l;
    public final t<c.c.a.l.a.c> n = new t<>();
    public final LiveData<c.c.a.l.a.c> o = this.n;
    public final t<c.c.a.l.a.c> p = new t<>();
    public final LiveData<c.c.a.l.a.c> q = this.p;
    public final t<Boolean> r = new t<>();
    public final LiveData<Boolean> s = this.r;
    public c.c.a.l.a.a t;
    public c.c.a.l.a.a u;
    public List<c.c.a.l.a.a> v;
    public List<c.c.a.l.a.a> w;
    public final String x = this.K.getString(m.player_automatic);
    public final String y = this.K.getString(m.player_subtitle_off);
    public X z;

    /* compiled from: CafePlayer.kt */
    public static final class a {
        public a() {
        }

        public final CafePlayer a(C0202m mVar, PlayerView playerView, f fVar, b bVar) {
            h.f.b.j.b(mVar, SessionEvent.ACTIVITY_KEY);
            h.f.b.j.b(playerView, "exoPlayerView");
            h.f.b.j.b(fVar, "params");
            h.f.b.j.b(bVar, "videoStatRepository");
            Context applicationContext = mVar.getApplicationContext();
            h.f.b.j.a((Object) applicationContext, "activity.applicationContext");
            F a2 = G.a((C0285i) mVar, a(applicationContext, fVar, bVar));
            h.f.b.j.a((Object) a2, "ViewModelProviders.of(\n …Repository)\n            )");
            return a(a2, playerView);
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }

        public final CafePlayer a(F f2, PlayerView playerView) {
            E a2 = f2.a(CafePlayer.class);
            CafePlayer cafePlayer = (CafePlayer) a2;
            cafePlayer.a(playerView);
            h.f.b.j.a((Object) a2, "provider[CafePlayer::cla…PlayerView)\n            }");
            return cafePlayer;
        }

        public final F.b a(Context context, f fVar, b bVar) {
            return new c.c.a.l.d(context, fVar, bVar);
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(CafePlayer.class), "defaultDataSourceFactory", "getDefaultDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;");
        k.a((PropertyReference1) propertyReference1Impl);
        f12299d = new i[]{propertyReference1Impl};
    }

    public CafePlayer(Context context, f fVar, I i2, b bVar) {
        h.f.b.j.b(context, "context");
        h.f.b.j.b(fVar, "params");
        h.f.b.j.b(i2, "client");
        h.f.b.j.b(bVar, "videoStatRepository");
        this.K = context;
        this.L = fVar;
        this.M = i2;
        this.N = bVar;
        t<PlaybackState> tVar = new t<>();
        tVar.b(PlaybackState.LOADING);
        this.f12301f = tVar;
    }

    public /* synthetic */ void a(int i2) {
        N.b((M.b) this, i2);
    }

    public /* synthetic */ void a(K k2) {
        N.a((M.b) this, k2);
    }

    public /* synthetic */ void a(Z z2, Object obj, int i2) {
        N.a(this, z2, obj, i2);
    }

    public /* synthetic */ void a(TrackGroupArray trackGroupArray, o oVar) {
        N.a((M.b) this, trackGroupArray, oVar);
    }

    public /* synthetic */ void a(boolean z2) {
        N.a((M.b) this, z2);
    }

    public /* synthetic */ void b() {
        N.a(this);
    }

    public /* synthetic */ void b(int i2) {
        N.a((M.b) this, i2);
    }

    public /* synthetic */ void b(boolean z2) {
        N.b((M.b) this, z2);
    }

    public final q i() {
        h.c cVar = this.J;
        i iVar = f12299d[0];
        return (q) cVar.getValue();
    }

    public final LiveData<List<c.c.a.l.a.c>> n() {
        return this.f12306k;
    }

    public final LiveData<c.c.a.l.a.c> o() {
        return this.o;
    }

    public final LiveData<c.c.a.l.a.c> p() {
        return this.q;
    }

    public final LiveData<List<c.c.a.l.a.c>> q() {
        return this.m;
    }

    public final void r() {
        X x2 = this.z;
        if (x2 != null) {
            x2.b(false);
        }
    }

    public final void s() {
        if (this.f12301f.a() != PlaybackState.LOADING) {
            if (this.f12301f.a() == PlaybackState.ERROR) {
                u();
                return;
            }
            X x2 = this.z;
            if (x2 != null) {
                boolean z2 = true;
                if (x2 != null ? x2.f() : true) {
                    z2 = false;
                }
                x2.b(z2);
            }
        }
    }

    public final void t() {
        if (h.f.b.j.a((Object) this.f12304i.a(), (Object) true)) {
            X x2 = this.z;
            if (x2 != null) {
                x2.b(true);
            }
        }
    }

    public final void u() {
        X x2 = this.z;
        boolean z2 = true;
        if (x2 != null) {
            x2.b(true);
        }
        if (this.f12301f.a() != PlaybackState.ENDED && !h.f.b.j.a((Object) this.f12304i.a(), (Object) true)) {
            z2 = false;
        }
        X x3 = this.z;
        if (x3 != null) {
            x3.a(this.E, z2, false);
        }
    }

    public final C1125ra v() {
        return C1103g.b(this, null, null, new CafePlayer$prepare$1(this, null), 3, null);
    }

    public final void w() {
        TimerTask timerTask = this.H;
        if (timerTask != null) {
            timerTask.cancel();
        }
        Timer timer = this.G;
        if (timer != null) {
            timer.cancel();
        }
        Timer timer2 = this.G;
        if (timer2 != null) {
            timer2.purge();
        }
        this.G = null;
    }

    public final void x() {
        X x2 = this.z;
        if (x2 != null) {
            this.F = x2.getCurrentPosition();
            X x3 = this.z;
            if (x3 != null) {
                x3.b((M.b) this);
            }
            WeakReference<PlayerView> weakReference = this.A;
            if (weakReference != null) {
                PlayerView playerView = (PlayerView) weakReference.get();
                if (playerView != null) {
                    playerView.setPlayer(null);
                }
            }
            WeakReference<PlayerView> weakReference2 = this.A;
            if (weakReference2 != null) {
                weakReference2.clear();
            }
            x2.z();
            this.z = null;
        }
    }

    public final void y() {
        RefreshData c2 = this.L.c();
        int rate = c2 != null ? c2.getRate() : 0;
        if (rate > 0) {
            this.H = new c.c.a.l.c(this);
            Timer timer = new Timer();
            timer.scheduleAtFixedRate(this.H, 0, ((long) rate) * 1000);
            this.G = timer;
        }
    }

    public final Uri b(Uri uri) {
        try {
            L.a aVar = new L.a();
            aVar.b(uri.toString());
            S s2 = this.M.a(aVar.a()).execute().s();
            if (s2 != null) {
                Uri parse = Uri.parse(new JSONObject(s2.x()).getJSONObject("videoshow").getString("file_link"));
                h.f.b.j.a((Object) parse, "Uri.parse(aparatVideoUrl)");
                return parse;
            }
            h.f.b.j.a();
            throw null;
        } catch (Exception unused) {
            return uri;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v1, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v2, resolved type: c.c.a.l.a.c} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void c(int r7) {
        /*
            r6 = this;
            java.util.List<c.c.a.l.a.a> r0 = r6.w
            java.lang.String r1 = "qualities"
            r2 = 0
            if (r0 == 0) goto L_0x005e
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x000e
            return
        L_0x000e:
            java.util.List<c.c.a.l.a.a> r0 = r6.w
            if (r0 == 0) goto L_0x005a
            if (r0 == 0) goto L_0x0056
            r3 = 0
            java.lang.Object r3 = r0.get(r3)
            c.c.a.l.a.a r3 = (c.c.a.l.a.a) r3
            int r3 = r3.c()
            c.c.a.l.a.a r0 = r6.a((int) r7, (java.util.List<c.c.a.l.a.a>) r0, (int) r3)
            r6.t = r0
            b.r.t<java.util.List<c.c.a.l.a.c>> r0 = r6.f12305j
            java.util.List<c.c.a.l.a.a> r3 = r6.w
            if (r3 == 0) goto L_0x0052
            c.c.a.l.a.a r1 = r6.t
            java.lang.String r4 = r6.x
            java.lang.String r5 = "autoText"
            h.f.b.j.a((java.lang.Object) r4, (java.lang.String) r5)
            java.util.List r1 = r6.a((java.util.List<c.c.a.l.a.a>) r3, (c.c.a.l.a.a) r1, (java.lang.String) r4)
            r0.b(r1)
            b.r.t<c.c.a.l.a.c> r0 = r6.n
            androidx.lifecycle.LiveData<java.util.List<c.c.a.l.a.c>> r1 = r6.f12306k
            java.lang.Object r1 = r1.a()
            java.util.List r1 = (java.util.List) r1
            if (r1 == 0) goto L_0x004e
            java.lang.Object r7 = r1.get(r7)
            r2 = r7
            c.c.a.l.a.c r2 = (c.c.a.l.a.c) r2
        L_0x004e:
            r0.b(r2)
            return
        L_0x0052:
            h.f.b.j.c(r1)
            throw r2
        L_0x0056:
            h.f.b.j.c(r1)
            throw r2
        L_0x005a:
            h.f.b.j.c(r1)
            throw r2
        L_0x005e:
            h.f.b.j.c(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.player.CafePlayer.c(int):void");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v1, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v2, resolved type: c.c.a.l.a.c} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void d(int r7) {
        /*
            r6 = this;
            java.util.List<c.c.a.l.a.a> r0 = r6.v
            java.lang.String r1 = "subtitles"
            r2 = 0
            if (r0 == 0) goto L_0x005e
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x000e
            return
        L_0x000e:
            java.util.List<c.c.a.l.a.a> r0 = r6.v
            if (r0 == 0) goto L_0x005a
            if (r0 == 0) goto L_0x0056
            r3 = 0
            java.lang.Object r3 = r0.get(r3)
            c.c.a.l.a.a r3 = (c.c.a.l.a.a) r3
            int r3 = r3.c()
            c.c.a.l.a.a r0 = r6.a((int) r7, (java.util.List<c.c.a.l.a.a>) r0, (int) r3)
            r6.u = r0
            b.r.t<java.util.List<c.c.a.l.a.c>> r0 = r6.f12307l
            java.util.List<c.c.a.l.a.a> r3 = r6.v
            if (r3 == 0) goto L_0x0052
            c.c.a.l.a.a r1 = r6.u
            java.lang.String r4 = r6.y
            java.lang.String r5 = "subtitleOffText"
            h.f.b.j.a((java.lang.Object) r4, (java.lang.String) r5)
            java.util.List r1 = r6.a((java.util.List<c.c.a.l.a.a>) r3, (c.c.a.l.a.a) r1, (java.lang.String) r4)
            r0.b(r1)
            b.r.t<c.c.a.l.a.c> r0 = r6.p
            androidx.lifecycle.LiveData<java.util.List<c.c.a.l.a.c>> r1 = r6.m
            java.lang.Object r1 = r1.a()
            java.util.List r1 = (java.util.List) r1
            if (r1 == 0) goto L_0x004e
            java.lang.Object r7 = r1.get(r7)
            r2 = r7
            c.c.a.l.a.c r2 = (c.c.a.l.a.c) r2
        L_0x004e:
            r0.b(r2)
            return
        L_0x0052:
            h.f.b.j.c(r1)
            throw r2
        L_0x0056:
            h.f.b.j.c(r1)
            throw r2
        L_0x005a:
            h.f.b.j.c(r1)
            throw r2
        L_0x005e:
            h.f.b.j.c(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.player.CafePlayer.d(int):void");
    }

    public final void e() {
        a(new CafePlayer$authorizeVideoUrl$1(this, null));
    }

    public final j.a f() {
        if (C0661a.f6078a[this.L.d().ordinal()] != 1) {
            return i();
        }
        return a(this.L.f());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x005d, code lost:
        if (r1 != null) goto L_0x006a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.a.a.j.v g() {
        /*
            r6 = this;
            c.c.a.l.f r0 = r6.L
            com.farsitel.bazaar.player.VideoSource r0 = r0.d()
            com.farsitel.bazaar.player.VideoSource r1 = com.farsitel.bazaar.player.VideoSource.APARAT
            if (r0 != r1) goto L_0x0015
            c.c.a.l.f r0 = r6.L
            android.net.Uri r0 = r0.f()
            android.net.Uri r0 = r6.b((android.net.Uri) r0)
            goto L_0x001b
        L_0x0015:
            c.c.a.l.f r0 = r6.L
            android.net.Uri r0 = r0.f()
        L_0x001b:
            c.e.a.a.n.j$a r1 = r6.f()
            c.e.a.a.j.v r0 = r6.a((android.net.Uri) r0, (c.e.a.a.n.j.a) r1)
            c.c.a.l.f r1 = r6.L
            java.util.List r1 = r1.e()
            r2 = 0
            if (r1 == 0) goto L_0x0068
            java.util.ArrayList r3 = new java.util.ArrayList
            r4 = 10
            int r4 = h.a.m.a(r1, r4)
            r3.<init>(r4)
            java.util.Iterator r1 = r1.iterator()
        L_0x003b:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto L_0x0053
            java.lang.Object r4 = r1.next()
            com.farsitel.bazaar.common.model.VideoSubtitle r4 = (com.farsitel.bazaar.common.model.VideoSubtitle) r4
            c.e.a.a.n.q r5 = r6.i()
            c.e.a.a.j.v r4 = r6.a((com.farsitel.bazaar.common.model.VideoSubtitle) r4, (c.e.a.a.n.j.a) r5)
            r3.add(r4)
            goto L_0x003b
        L_0x0053:
            c.e.a.a.j.v[] r1 = new c.e.a.a.j.v[r2]
            java.lang.Object[] r1 = r3.toArray(r1)
            if (r1 == 0) goto L_0x0060
            c.e.a.a.j.v[] r1 = (c.e.a.a.j.v[]) r1
            if (r1 == 0) goto L_0x0068
            goto L_0x006a
        L_0x0060:
            kotlin.TypeCastException r0 = new kotlin.TypeCastException
            java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<T>"
            r0.<init>(r1)
            throw r0
        L_0x0068:
            c.e.a.a.j.v[] r1 = new c.e.a.a.j.v[r2]
        L_0x006a:
            com.google.android.exoplayer2.source.MergingMediaSource r2 = new com.google.android.exoplayer2.source.MergingMediaSource
            h.f.b.m r3 = new h.f.b.m
            r4 = 2
            r3.<init>(r4)
            r3.a((java.lang.Object) r0)
            r3.b(r1)
            int r0 = r3.a()
            c.e.a.a.j.v[] r0 = new c.e.a.a.j.v[r0]
            java.lang.Object[] r0 = r3.a((java.lang.Object[]) r0)
            c.e.a.a.j.v[] r0 = (c.e.a.a.j.v[]) r0
            r2.<init>(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.player.CafePlayer.g():c.e.a.a.j.v");
    }

    public final long h() {
        X x2 = this.z;
        if (x2 != null) {
            return x2.getCurrentPosition();
        }
        return -1;
    }

    public final LiveData<Boolean> j() {
        return this.f12304i;
    }

    public final LiveData<Boolean> k() {
        return this.s;
    }

    public final long l() {
        X x2 = this.z;
        if (x2 != null) {
            return x2.getDuration();
        }
        return -1;
    }

    public final LiveData<PlaybackState> m() {
        return this.f12302g;
    }

    public final void a(PlayerView playerView) {
        RefreshData c2 = this.L.c();
        c.c.a.l.b.a aVar = new c.c.a.l.b.a(c2 != null ? c2.getVendorData() : null, null, 0, 6, null);
        this.I = aVar;
        this.B.a(playerView);
        this.A = new WeakReference<>(playerView);
    }

    public void d() {
        x();
        super.d();
    }

    public final v a(Uri uri, j.a aVar) {
        int a2 = c.e.a.a.o.I.a(uri);
        if (a2 == 1) {
            c.e.a.a.j.e.f createMediaSource = new f.a(aVar).createMediaSource(uri);
            h.f.b.j.a((Object) createMediaSource, "SsMediaSource.Factory(da…y).createMediaSource(uri)");
            return createMediaSource;
        } else if (a2 == 0) {
            c.e.a.a.j.c.f createMediaSource2 = new f.c(aVar).createMediaSource(uri);
            h.f.b.j.a((Object) createMediaSource2, "DashMediaSource.Factory(…y).createMediaSource(uri)");
            return createMediaSource2;
        } else if (a2 == 2) {
            c.e.a.a.j.d.m createMediaSource3 = new m.a(aVar).createMediaSource(uri);
            h.f.b.j.a((Object) createMediaSource3, "HlsMediaSource.Factory(d…y).createMediaSource(uri)");
            return createMediaSource3;
        } else if (a2 == 3) {
            z a3 = new z.a(aVar).a(uri);
            h.f.b.j.a((Object) a3, "ProgressiveMediaSource.F…y).createMediaSource(uri)");
            return a3;
        } else {
            throw new IllegalStateException("Unsupported type: " + a2);
        }
    }

    public final String b(ExoPlaybackException exoPlaybackException) {
        Integer valueOf = exoPlaybackException != null ? Integer.valueOf(exoPlaybackException.type) : null;
        if (valueOf != null && valueOf.intValue() == 0) {
            return "TYPE_SOURCE: " + exoPlaybackException.b().getMessage();
        } else if (valueOf != null && valueOf.intValue() == 1) {
            return "TYPE_RENDERER: " + exoPlaybackException.a().getMessage();
        } else if (valueOf != null && valueOf.intValue() == 2) {
            return "TYPE_UNEXPECTED: " + exoPlaybackException.c().getMessage();
        } else {
            return "Unknown Error: " + exoPlaybackException;
        }
    }

    public final j.a a(Uri uri) {
        l lVar = new l(uri);
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = null;
        try {
            ref$ObjectRef.element = new EncryptedFileDataSource(new c.c.a.c.e.a(this.K));
            ((EncryptedFileDataSource) ref$ObjectRef.element).a(lVar);
        } catch (Exception e2) {
            c.c.a.c.c.a.f4699b.a(new Throwable("Unable to open encrypted video file", e2));
        }
        return new C0662b(ref$ObjectRef);
    }

    public final v a(VideoSubtitle videoSubtitle, j.a aVar) {
        c.e.a.a.j.I a2 = new I.a(aVar).a(videoSubtitle.getGetSubtitleUri(), Format.a(null, "text/vtt", 4, videoSubtitle.getName()), -9223372036854775807L);
        h.f.b.j.a((Object) a2, "SingleSampleMediaSource.…     TIME_UNSET\n        )");
        return a2;
    }

    public final c.c.a.l.a.a a(int i2, List<c.c.a.l.a.a> list, int i3) {
        c.c.a.l.a.a aVar = i2 > 0 ? list.get(i2 - 1) : null;
        DefaultTrackSelector defaultTrackSelector = this.C;
        DefaultTrackSelector.c d2 = defaultTrackSelector.d();
        d2.a(i3);
        if (aVar != null) {
            d2.a(aVar.c(), aVar.f(), aVar.e());
        }
        defaultTrackSelector.a(d2.a());
        return aVar;
    }

    public final List<c.c.a.l.a.c> a(List<c.c.a.l.a.a> list, c.c.a.l.a.a aVar, String str) {
        if (list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(h.a.m.a(list, 10));
        int i2 = 0;
        for (T next : list) {
            int i3 = i2 + 1;
            if (i2 >= 0) {
                c.c.a.l.a.a aVar2 = (c.c.a.l.a.a) next;
                arrayList.add(new c.c.a.l.a.c(aVar2.g(), i3, h.f.b.j.a((Object) aVar, (Object) aVar2)));
                i2 = i3;
            } else {
                h.a.l.b();
                throw null;
            }
        }
        List<c.c.a.l.a.c> a2 = u.a(arrayList);
        a2.add(0, new c.c.a.l.a.c(str, 0, aVar == null));
        return a2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(boolean r6, int r7) {
        /*
            r5 = this;
            b.r.t<java.lang.Boolean> r0 = r5.f12303h
            androidx.lifecycle.LiveData<java.lang.Boolean> r1 = r5.f12304i
            java.lang.Object r1 = r1.a()
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            r2 = 1
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r2)
            boolean r1 = h.f.b.j.a((java.lang.Object) r1, (java.lang.Object) r3)
            if (r1 != 0) goto L_0x0022
            c.e.a.a.X r1 = r5.z
            if (r1 == 0) goto L_0x0020
            boolean r1 = r1.y()
            if (r1 != r2) goto L_0x0020
            goto L_0x0022
        L_0x0020:
            r1 = 0
            goto L_0x0023
        L_0x0022:
            r1 = 1
        L_0x0023:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.b(r1)
            b.r.t<com.farsitel.bazaar.player.view.PlaybackState> r0 = r5.f12301f
            if (r7 == r2) goto L_0x00d8
            r1 = 3
            r2 = 2
            if (r7 == r2) goto L_0x0043
            if (r7 == r1) goto L_0x003b
            r6 = 4
            if (r7 == r6) goto L_0x0038
            return
        L_0x0038:
            com.farsitel.bazaar.player.view.PlaybackState r6 = com.farsitel.bazaar.player.view.PlaybackState.ENDED
            goto L_0x0045
        L_0x003b:
            if (r6 == 0) goto L_0x0040
            com.farsitel.bazaar.player.view.PlaybackState r6 = com.farsitel.bazaar.player.view.PlaybackState.PLAYING
            goto L_0x0045
        L_0x0040:
            com.farsitel.bazaar.player.view.PlaybackState r6 = com.farsitel.bazaar.player.view.PlaybackState.PAUSED
            goto L_0x0045
        L_0x0043:
            com.farsitel.bazaar.player.view.PlaybackState r6 = com.farsitel.bazaar.player.view.PlaybackState.LOADING
        L_0x0045:
            r0.b(r6)
            java.util.List<c.c.a.l.a.a> r6 = r5.w
            if (r6 != 0) goto L_0x00d8
            c.c.a.l.a.e r6 = r5.D
            r7 = 0
            java.util.List r6 = c.c.a.l.a.e.a(r6, r2, r7, r2, r7)
            r5.w = r6
            c.c.a.l.a.e r6 = r5.D
            c.c.a.l.f r0 = r5.L
            java.util.List r0 = r0.e()
            if (r0 == 0) goto L_0x0082
            java.util.ArrayList r2 = new java.util.ArrayList
            r4 = 10
            int r4 = h.a.m.a(r0, r4)
            r2.<init>(r4)
            java.util.Iterator r0 = r0.iterator()
        L_0x006e:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L_0x0083
            java.lang.Object r4 = r0.next()
            com.farsitel.bazaar.common.model.VideoSubtitle r4 = (com.farsitel.bazaar.common.model.VideoSubtitle) r4
            java.lang.String r4 = r4.getName()
            r2.add(r4)
            goto L_0x006e
        L_0x0082:
            r2 = r7
        L_0x0083:
            java.util.List r6 = r6.a(r1, r2)
            r5.v = r6
            b.r.t<java.util.List<c.c.a.l.a.c>> r6 = r5.f12307l
            java.util.List<c.c.a.l.a.a> r0 = r5.v
            if (r0 == 0) goto L_0x00d2
            java.lang.String r1 = r5.y
            java.lang.String r2 = "subtitleOffText"
            h.f.b.j.a((java.lang.Object) r1, (java.lang.String) r2)
            java.util.List r0 = r5.a((java.util.List<c.c.a.l.a.a>) r0, (c.c.a.l.a.a) r7, (java.lang.String) r1)
            r6.b(r0)
            c.c.a.l.f r6 = r5.L
            com.farsitel.bazaar.player.VideoSource r6 = r6.d()
            com.farsitel.bazaar.player.VideoSource r0 = com.farsitel.bazaar.player.VideoSource.NETWORK
            if (r6 != r0) goto L_0x00c2
            b.r.t<java.util.List<c.c.a.l.a.c>> r6 = r5.f12305j
            java.util.List<c.c.a.l.a.a> r0 = r5.w
            if (r0 == 0) goto L_0x00bc
            java.lang.String r1 = r5.x
            java.lang.String r2 = "autoText"
            h.f.b.j.a((java.lang.Object) r1, (java.lang.String) r2)
            java.util.List r7 = r5.a((java.util.List<c.c.a.l.a.a>) r0, (c.c.a.l.a.a) r7, (java.lang.String) r1)
            r6.b(r7)
            goto L_0x00d8
        L_0x00bc:
            java.lang.String r6 = "qualities"
            h.f.b.j.c(r6)
            throw r7
        L_0x00c2:
            c.c.a.l.f r6 = r5.L
            com.farsitel.bazaar.player.VideoSource r6 = r6.d()
            com.farsitel.bazaar.player.VideoSource r7 = com.farsitel.bazaar.player.VideoSource.DISK
            if (r6 != r7) goto L_0x00d8
            b.r.t<java.lang.Boolean> r6 = r5.r
            r6.b(r3)
            goto L_0x00d8
        L_0x00d2:
            java.lang.String r6 = "subtitles"
            h.f.b.j.c(r6)
            throw r7
        L_0x00d8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.player.CafePlayer.a(boolean, int):void");
    }

    public void a(ExoPlaybackException exoPlaybackException) {
        this.f12301f.b(PlaybackState.ERROR);
        C1125ra unused = C1103g.b(this, null, null, new CafePlayer$onPlayerError$1(this, exoPlaybackException, null), 3, null);
    }
}
