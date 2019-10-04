package c.e.a.a.m;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import c.e.a.a.C;
import c.e.a.a.C0744q;
import c.e.a.a.C0745s;
import c.e.a.a.K;
import c.e.a.a.L;
import c.e.a.a.M;
import c.e.a.a.N;
import c.e.a.a.Z;
import c.e.a.a.l.o;
import c.e.a.a.m.p;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.y;
import c.e.a.a.r;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.crashlytics.android.answers.BackgroundManager;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Locale;

/* compiled from: PlayerControlView */
public class g extends FrameLayout {
    public r A;
    public b B;
    public L C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public int H = BackgroundManager.BACKGROUND_DELAY;
    public int I = 15000;
    public int J = BackgroundManager.BACKGROUND_DELAY;
    public int K = 200;
    public int L = 0;
    public boolean M = false;
    public long N = -9223372036854775807L;
    public long[] O;
    public boolean[] P;
    public long[] Q;
    public boolean[] R;
    public long S;

    /* renamed from: a  reason: collision with root package name */
    public final a f9418a;

    /* renamed from: b  reason: collision with root package name */
    public final View f9419b;

    /* renamed from: c  reason: collision with root package name */
    public final View f9420c;

    /* renamed from: d  reason: collision with root package name */
    public final View f9421d;

    /* renamed from: e  reason: collision with root package name */
    public final View f9422e;

    /* renamed from: f  reason: collision with root package name */
    public final View f9423f;

    /* renamed from: g  reason: collision with root package name */
    public final View f9424g;

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f9425h;

    /* renamed from: i  reason: collision with root package name */
    public final View f9426i;

    /* renamed from: j  reason: collision with root package name */
    public final View f9427j;

    /* renamed from: k  reason: collision with root package name */
    public final TextView f9428k;

    /* renamed from: l  reason: collision with root package name */
    public final TextView f9429l;
    public final p m;
    public final StringBuilder n;
    public final Formatter o;
    public final Z.a p;
    public final Z.b q;
    public final Runnable r;
    public final Runnable s;
    public final Drawable t;
    public final Drawable u;
    public final Drawable v;
    public final String w;
    public final String x;
    public final String y;
    public M z;

    /* compiled from: PlayerControlView */
    private final class a implements M.b, p.a, View.OnClickListener {
        public a() {
        }

        public /* synthetic */ void a(K k2) {
            N.a((M.b) this, k2);
        }

        public void a(p pVar, long j2) {
            if (g.this.f9429l != null) {
                g.this.f9429l.setText(I.a(g.this.n, g.this.o, j2));
            }
        }

        public /* synthetic */ void a(ExoPlaybackException exoPlaybackException) {
            N.a((M.b) this, exoPlaybackException);
        }

        public /* synthetic */ void a(TrackGroupArray trackGroupArray, o oVar) {
            N.a((M.b) this, trackGroupArray, oVar);
        }

        public /* synthetic */ void a(boolean z) {
            N.a((M.b) this, z);
        }

        public /* synthetic */ void b() {
            N.a(this);
        }

        public void b(p pVar, long j2) {
            boolean unused = g.this.G = true;
            if (g.this.f9429l != null) {
                g.this.f9429l.setText(I.a(g.this.n, g.this.o, j2));
            }
        }

        public void onClick(View view) {
            M r = g.this.z;
            if (r != null) {
                if (g.this.f9420c == view) {
                    g.this.b(r);
                } else if (g.this.f9419b == view) {
                    g.this.c(r);
                } else if (g.this.f9423f == view) {
                    g.this.a(r);
                } else if (g.this.f9424g == view) {
                    g.this.d(r);
                } else if (g.this.f9421d == view) {
                    if (r.b() == 1) {
                        if (g.this.C != null) {
                            g.this.C.a();
                        }
                    } else if (r.b() == 4) {
                        g.this.A.a(r, r.j(), -9223372036854775807L);
                    }
                    g.this.A.b(r, true);
                } else if (g.this.f9422e == view) {
                    g.this.A.b(r, false);
                } else if (g.this.f9425h == view) {
                    g.this.A.a(r, y.a(r.d(), g.this.L));
                } else if (g.this.f9426i == view) {
                    g.this.A.a(r, !r.s());
                }
            }
        }

        public void a(p pVar, long j2, boolean z) {
            boolean unused = g.this.G = false;
            if (!z && g.this.z != null) {
                g gVar = g.this;
                gVar.b(gVar.z, j2);
            }
        }

        public void b(boolean z) {
            g.this.l();
            g.this.h();
        }

        public void a(boolean z, int i2) {
            g.this.i();
            g.this.j();
        }

        public void b(int i2) {
            g.this.h();
            g.this.m();
        }

        public void a(int i2) {
            g.this.k();
            g.this.h();
        }

        public void a(Z z, Object obj, int i2) {
            g.this.h();
            g.this.m();
        }
    }

    /* compiled from: PlayerControlView */
    public interface b {
        void a(int i2);
    }

    static {
        C.a("goog.exo.ui");
    }

    public g(Context context, AttributeSet attributeSet, int i2, AttributeSet attributeSet2) {
        super(context, attributeSet, i2);
        int i3 = l.exo_player_control_view;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, n.PlayerControlView, 0, 0);
            try {
                this.H = obtainStyledAttributes.getInt(n.PlayerControlView_rewind_increment, this.H);
                this.I = obtainStyledAttributes.getInt(n.PlayerControlView_fastforward_increment, this.I);
                this.J = obtainStyledAttributes.getInt(n.PlayerControlView_show_timeout, this.J);
                i3 = obtainStyledAttributes.getResourceId(n.PlayerControlView_controller_layout_id, i3);
                this.L = a(obtainStyledAttributes, this.L);
                this.M = obtainStyledAttributes.getBoolean(n.PlayerControlView_show_shuffle_button, this.M);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(n.PlayerControlView_time_bar_min_update_interval, this.K));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.p = new Z.a();
        this.q = new Z.b();
        this.n = new StringBuilder();
        this.o = new Formatter(this.n, Locale.getDefault());
        this.O = new long[0];
        this.P = new boolean[0];
        this.Q = new long[0];
        this.R = new boolean[0];
        this.f9418a = new a();
        this.A = new C0745s();
        this.r = new c(this);
        this.s = new a(this);
        LayoutInflater.from(context).inflate(i3, this);
        setDescendantFocusability(262144);
        this.f9428k = (TextView) findViewById(k.exo_duration);
        this.f9429l = (TextView) findViewById(k.exo_position);
        this.m = (p) findViewById(k.exo_progress);
        p pVar = this.m;
        if (pVar != null) {
            pVar.a(this.f9418a);
        }
        this.f9421d = findViewById(k.exo_play);
        View view = this.f9421d;
        if (view != null) {
            view.setOnClickListener(this.f9418a);
        }
        this.f9422e = findViewById(k.exo_pause);
        View view2 = this.f9422e;
        if (view2 != null) {
            view2.setOnClickListener(this.f9418a);
        }
        this.f9419b = findViewById(k.exo_prev);
        View view3 = this.f9419b;
        if (view3 != null) {
            view3.setOnClickListener(this.f9418a);
        }
        this.f9420c = findViewById(k.exo_next);
        View view4 = this.f9420c;
        if (view4 != null) {
            view4.setOnClickListener(this.f9418a);
        }
        this.f9424g = findViewById(k.exo_rew);
        View view5 = this.f9424g;
        if (view5 != null) {
            view5.setOnClickListener(this.f9418a);
        }
        this.f9423f = findViewById(k.exo_ffwd);
        View view6 = this.f9423f;
        if (view6 != null) {
            view6.setOnClickListener(this.f9418a);
        }
        this.f9425h = (ImageView) findViewById(k.exo_repeat_toggle);
        ImageView imageView = this.f9425h;
        if (imageView != null) {
            imageView.setOnClickListener(this.f9418a);
        }
        this.f9426i = findViewById(k.exo_shuffle);
        View view7 = this.f9426i;
        if (view7 != null) {
            view7.setOnClickListener(this.f9418a);
        }
        this.f9427j = findViewById(k.exo_vr);
        setShowVrButton(false);
        Resources resources = context.getResources();
        this.t = resources.getDrawable(j.exo_controls_repeat_off);
        this.u = resources.getDrawable(j.exo_controls_repeat_one);
        this.v = resources.getDrawable(j.exo_controls_repeat_all);
        this.w = resources.getString(m.exo_controls_repeat_off_description);
        this.x = resources.getString(m.exo_controls_repeat_one_description);
        this.y = resources.getString(m.exo_controls_repeat_all_description);
    }

    @SuppressLint({"InlinedApi"})
    public static boolean a(int i2) {
        return i2 == 90 || i2 == 89 || i2 == 85 || i2 == 126 || i2 == 127 || i2 == 87 || i2 == 88;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.s);
        } else if (motionEvent.getAction() == 1) {
            b();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public M getPlayer() {
        return this.z;
    }

    public int getRepeatToggleModes() {
        return this.L;
    }

    public boolean getShowShuffleButton() {
        return this.M;
    }

    public int getShowTimeoutMs() {
        return this.J;
    }

    public boolean getShowVrButton() {
        View view = this.f9427j;
        return view != null && view.getVisibility() == 0;
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.D = true;
        long j2 = this.N;
        if (j2 != -9223372036854775807L) {
            long uptimeMillis = j2 - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                a();
            } else {
                postDelayed(this.s, uptimeMillis);
            }
        } else if (d()) {
            b();
        }
        g();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.D = false;
        removeCallbacks(this.r);
        removeCallbacks(this.s);
    }

    public void setControlDispatcher(r rVar) {
        if (rVar == null) {
            rVar = new C0745s();
        }
        this.A = rVar;
    }

    public void setFastForwardIncrementMs(int i2) {
        this.I = i2;
        h();
    }

    public void setPlaybackPreparer(L l2) {
        this.C = l2;
    }

    public void setPlayer(M m2) {
        boolean z2 = true;
        C0737e.b(Looper.myLooper() == Looper.getMainLooper());
        if (!(m2 == null || m2.r() == Looper.getMainLooper())) {
            z2 = false;
        }
        C0737e.a(z2);
        M m3 = this.z;
        if (m3 != m2) {
            if (m3 != null) {
                m3.b((M.b) this.f9418a);
            }
            this.z = m2;
            if (m2 != null) {
                m2.a((M.b) this.f9418a);
            }
            g();
        }
    }

    public void setRepeatToggleModes(int i2) {
        this.L = i2;
        M m2 = this.z;
        if (m2 != null) {
            int d2 = m2.d();
            if (i2 == 0 && d2 != 0) {
                this.A.a(this.z, 0);
            } else if (i2 == 1 && d2 == 2) {
                this.A.a(this.z, 1);
            } else if (i2 == 2 && d2 == 1) {
                this.A.a(this.z, 2);
            }
        }
        k();
    }

    public void setRewindIncrementMs(int i2) {
        this.H = i2;
        h();
    }

    public void setShowMultiWindowTimeBar(boolean z2) {
        this.E = z2;
        m();
    }

    public void setShowShuffleButton(boolean z2) {
        this.M = z2;
        l();
    }

    public void setShowTimeoutMs(int i2) {
        this.J = i2;
        if (d()) {
            b();
        }
    }

    public void setShowVrButton(boolean z2) {
        View view = this.f9427j;
        if (view != null) {
            view.setVisibility(z2 ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i2) {
        this.K = I.a(i2, 16, (int) AnswersRetryFilesSender.BACKOFF_MS);
    }

    public void setVisibilityListener(b bVar) {
        this.B = bVar;
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        View view = this.f9427j;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }

    public final void e() {
        boolean c2 = c();
        if (!c2) {
            View view = this.f9421d;
            if (view != null) {
                view.requestFocus();
                return;
            }
        }
        if (c2) {
            View view2 = this.f9422e;
            if (view2 != null) {
                view2.requestFocus();
            }
        }
    }

    public void f() {
        if (!d()) {
            setVisibility(0);
            b bVar = this.B;
            if (bVar != null) {
                bVar.a(getVisibility());
            }
            g();
            e();
        }
        b();
    }

    public final void g() {
        i();
        h();
        k();
        l();
        m();
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARNING: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void h() {
        /*
            r7 = this;
            boolean r0 = r7.d()
            if (r0 == 0) goto L_0x0089
            boolean r0 = r7.D
            if (r0 != 0) goto L_0x000c
            goto L_0x0089
        L_0x000c:
            c.e.a.a.M r0 = r7.z
            r1 = 0
            if (r0 == 0) goto L_0x006a
            c.e.a.a.Z r0 = r0.q()
            boolean r2 = r0.c()
            if (r2 != 0) goto L_0x006a
            c.e.a.a.M r2 = r7.z
            boolean r2 = r2.c()
            if (r2 != 0) goto L_0x006a
            c.e.a.a.M r2 = r7.z
            int r2 = r2.j()
            c.e.a.a.Z$b r3 = r7.q
            r0.a((int) r2, (c.e.a.a.Z.b) r3)
            c.e.a.a.Z$b r0 = r7.q
            boolean r2 = r0.f7347d
            r3 = 1
            if (r2 != 0) goto L_0x0044
            boolean r0 = r0.f7348e
            if (r0 == 0) goto L_0x0044
            c.e.a.a.M r0 = r7.z
            boolean r0 = r0.hasPrevious()
            if (r0 == 0) goto L_0x0042
            goto L_0x0044
        L_0x0042:
            r0 = 0
            goto L_0x0045
        L_0x0044:
            r0 = 1
        L_0x0045:
            if (r2 == 0) goto L_0x004d
            int r4 = r7.H
            if (r4 <= 0) goto L_0x004d
            r4 = 1
            goto L_0x004e
        L_0x004d:
            r4 = 0
        L_0x004e:
            if (r2 == 0) goto L_0x0056
            int r5 = r7.I
            if (r5 <= 0) goto L_0x0056
            r5 = 1
            goto L_0x0057
        L_0x0056:
            r5 = 0
        L_0x0057:
            c.e.a.a.Z$b r6 = r7.q
            boolean r6 = r6.f7348e
            if (r6 != 0) goto L_0x0065
            c.e.a.a.M r6 = r7.z
            boolean r6 = r6.hasNext()
            if (r6 == 0) goto L_0x0066
        L_0x0065:
            r1 = 1
        L_0x0066:
            r3 = r2
            r2 = r1
            r1 = r4
            goto L_0x006e
        L_0x006a:
            r0 = 0
            r2 = 0
            r3 = 0
            r5 = 0
        L_0x006e:
            android.view.View r4 = r7.f9419b
            r7.a((boolean) r0, (android.view.View) r4)
            android.view.View r0 = r7.f9424g
            r7.a((boolean) r1, (android.view.View) r0)
            android.view.View r0 = r7.f9423f
            r7.a((boolean) r5, (android.view.View) r0)
            android.view.View r0 = r7.f9420c
            r7.a((boolean) r2, (android.view.View) r0)
            c.e.a.a.m.p r0 = r7.m
            if (r0 == 0) goto L_0x0089
            r0.setEnabled(r3)
        L_0x0089:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.m.g.h():void");
    }

    public final void i() {
        boolean z2;
        if (d() && this.D) {
            boolean c2 = c();
            View view = this.f9421d;
            int i2 = 8;
            boolean z3 = true;
            if (view != null) {
                z2 = (c2 && view.isFocused()) | false;
                this.f9421d.setVisibility(c2 ? 8 : 0);
            } else {
                z2 = false;
            }
            View view2 = this.f9422e;
            if (view2 != null) {
                if (c2 || !view2.isFocused()) {
                    z3 = false;
                }
                z2 |= z3;
                View view3 = this.f9422e;
                if (c2) {
                    i2 = 0;
                }
                view3.setVisibility(i2);
            }
            if (z2) {
                e();
            }
        }
    }

    public final void j() {
        long j2;
        if (d() && this.D) {
            M m2 = this.z;
            long j3 = 0;
            if (m2 != null) {
                j3 = this.S + m2.l();
                j2 = this.S + this.z.t();
            } else {
                j2 = 0;
            }
            TextView textView = this.f9429l;
            if (textView != null && !this.G) {
                textView.setText(I.a(this.n, this.o, j3));
            }
            p pVar = this.m;
            if (pVar != null) {
                pVar.setPosition(j3);
                this.m.setBufferedPosition(j2);
            }
            removeCallbacks(this.r);
            M m3 = this.z;
            int b2 = m3 == null ? 1 : m3.b();
            long j4 = 1000;
            if (b2 == 3 && this.z.f()) {
                p pVar2 = this.m;
                long min = Math.min(pVar2 != null ? pVar2.getPreferredUpdateDelay() : 1000, 1000 - (j3 % 1000));
                float f2 = this.z.a().f7300b;
                if (f2 > 0.0f) {
                    j4 = (long) (((float) min) / f2);
                }
                postDelayed(this.r, I.b(j4, (long) this.K, 1000));
            } else if (b2 != 4 && b2 != 1) {
                postDelayed(this.r, 1000);
            }
        }
    }

    public final void k() {
        if (d() && this.D) {
            ImageView imageView = this.f9425h;
            if (imageView != null) {
                if (this.L == 0) {
                    imageView.setVisibility(8);
                } else if (this.z == null) {
                    a(false, (View) imageView);
                } else {
                    a(true, (View) imageView);
                    int d2 = this.z.d();
                    if (d2 == 0) {
                        this.f9425h.setImageDrawable(this.t);
                        this.f9425h.setContentDescription(this.w);
                    } else if (d2 == 1) {
                        this.f9425h.setImageDrawable(this.u);
                        this.f9425h.setContentDescription(this.x);
                    } else if (d2 == 2) {
                        this.f9425h.setImageDrawable(this.v);
                        this.f9425h.setContentDescription(this.y);
                    }
                    this.f9425h.setVisibility(0);
                }
            }
        }
    }

    public final void l() {
        if (d() && this.D) {
            View view = this.f9426i;
            if (view != null) {
                if (!this.M) {
                    view.setVisibility(8);
                    return;
                }
                M m2 = this.z;
                if (m2 == null) {
                    a(false, view);
                    return;
                }
                view.setAlpha(m2.s() ? 1.0f : 0.3f);
                this.f9426i.setEnabled(true);
                this.f9426i.setVisibility(0);
            }
        }
    }

    public final void m() {
        int i2;
        Z.b bVar;
        M m2 = this.z;
        if (m2 != null) {
            boolean z2 = true;
            this.F = this.E && a(m2.q(), this.q);
            long j2 = 0;
            this.S = 0;
            Z q2 = this.z.q();
            if (!q2.c()) {
                int j3 = this.z.j();
                int i3 = this.F ? 0 : j3;
                int b2 = this.F ? q2.b() - 1 : j3;
                long j4 = 0;
                i2 = 0;
                while (true) {
                    if (i3 > b2) {
                        break;
                    }
                    if (i3 == j3) {
                        this.S = C0744q.b(j4);
                    }
                    q2.a(i3, this.q);
                    Z.b bVar2 = this.q;
                    if (bVar2.f7352i == -9223372036854775807L) {
                        C0737e.b(this.F ^ z2);
                        break;
                    }
                    int i4 = bVar2.f7349f;
                    while (true) {
                        bVar = this.q;
                        if (i4 > bVar.f7350g) {
                            break;
                        }
                        q2.a(i4, this.p);
                        int a2 = this.p.a();
                        int i5 = i2;
                        for (int i6 = 0; i6 < a2; i6++) {
                            long b3 = this.p.b(i6);
                            if (b3 == Long.MIN_VALUE) {
                                long j5 = this.p.f7341d;
                                if (j5 == -9223372036854775807L) {
                                } else {
                                    b3 = j5;
                                }
                            }
                            long e2 = b3 + this.p.e();
                            if (e2 >= 0 && e2 <= this.q.f7352i) {
                                long[] jArr = this.O;
                                if (i5 == jArr.length) {
                                    int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                    this.O = Arrays.copyOf(this.O, length);
                                    this.P = Arrays.copyOf(this.P, length);
                                }
                                this.O[i5] = C0744q.b(j4 + e2);
                                this.P[i5] = this.p.d(i6);
                                i5++;
                            }
                        }
                        i4++;
                        i2 = i5;
                    }
                    j4 += bVar.f7352i;
                    i3++;
                    z2 = true;
                }
                j2 = j4;
            } else {
                i2 = 0;
            }
            long b4 = C0744q.b(j2);
            TextView textView = this.f9428k;
            if (textView != null) {
                textView.setText(I.a(this.n, this.o, b4));
            }
            p pVar = this.m;
            if (pVar != null) {
                pVar.setDuration(b4);
                int length2 = this.Q.length;
                int i7 = i2 + length2;
                long[] jArr2 = this.O;
                if (i7 > jArr2.length) {
                    this.O = Arrays.copyOf(jArr2, i7);
                    this.P = Arrays.copyOf(this.P, i7);
                }
                System.arraycopy(this.Q, 0, this.O, i2, length2);
                System.arraycopy(this.R, 0, this.P, i2, length2);
                this.m.a(this.O, this.P, i7);
            }
            j();
        }
    }

    public final void b() {
        removeCallbacks(this.s);
        if (this.J > 0) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int i2 = this.J;
            this.N = uptimeMillis + ((long) i2);
            if (this.D) {
                postDelayed(this.s, (long) i2);
                return;
            }
            return;
        }
        this.N = -9223372036854775807L;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0033, code lost:
        if (r1.f7347d == false) goto L_0x0035;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void c(c.e.a.a.M r7) {
        /*
            r6 = this;
            c.e.a.a.Z r0 = r7.q()
            boolean r1 = r0.c()
            if (r1 != 0) goto L_0x0043
            boolean r1 = r7.c()
            if (r1 == 0) goto L_0x0011
            goto L_0x0043
        L_0x0011:
            int r1 = r7.j()
            c.e.a.a.Z$b r2 = r6.q
            r0.a((int) r1, (c.e.a.a.Z.b) r2)
            int r0 = r7.m()
            r1 = -1
            if (r0 == r1) goto L_0x003e
            long r1 = r7.getCurrentPosition()
            r3 = 3000(0xbb8, double:1.482E-320)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L_0x0035
            c.e.a.a.Z$b r1 = r6.q
            boolean r2 = r1.f7348e
            if (r2 == 0) goto L_0x003e
            boolean r1 = r1.f7347d
            if (r1 != 0) goto L_0x003e
        L_0x0035:
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6.a((c.e.a.a.M) r7, (int) r0, (long) r1)
            goto L_0x0043
        L_0x003e:
            r0 = 0
            r6.a((c.e.a.a.M) r7, (long) r0)
        L_0x0043:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.m.g.c(c.e.a.a.M):void");
    }

    public boolean d() {
        return getVisibility() == 0;
    }

    public final void d(M m2) {
        if (m2.h() && this.H > 0) {
            a(m2, m2.getCurrentPosition() - ((long) this.H));
        }
    }

    public static int a(TypedArray typedArray, int i2) {
        return typedArray.getInt(n.PlayerControlView_repeat_toggle_modes, i2);
    }

    public void a() {
        if (d()) {
            setVisibility(8);
            b bVar = this.B;
            if (bVar != null) {
                bVar.a(getVisibility());
            }
            removeCallbacks(this.r);
            removeCallbacks(this.s);
            this.N = -9223372036854775807L;
        }
    }

    public final void b(M m2) {
        Z q2 = m2.q();
        if (!q2.c() && !m2.c()) {
            int j2 = m2.j();
            int o2 = m2.o();
            if (o2 != -1) {
                a(m2, o2, -9223372036854775807L);
            } else if (q2.a(j2, this.q).f7348e) {
                a(m2, j2, -9223372036854775807L);
            }
        }
    }

    public final boolean c() {
        M m2 = this.z;
        if (m2 == null || m2.b() == 4 || this.z.b() == 1 || !this.z.f()) {
            return false;
        }
        return true;
    }

    public final void a(boolean z2, View view) {
        if (view != null) {
            view.setEnabled(z2);
            view.setAlpha(z2 ? 1.0f : 0.3f);
            view.setVisibility(0);
        }
    }

    public final void a(M m2) {
        if (m2.h() && this.I > 0) {
            a(m2, m2.getCurrentPosition() + ((long) this.I));
        }
    }

    public final void b(M m2, long j2) {
        int i2;
        Z q2 = m2.q();
        if (this.F && !q2.c()) {
            int b2 = q2.b();
            i2 = 0;
            while (true) {
                long c2 = q2.a(i2, this.q).c();
                if (j2 < c2) {
                    break;
                } else if (i2 == b2 - 1) {
                    j2 = c2;
                    break;
                } else {
                    j2 -= c2;
                    i2++;
                }
            }
        } else {
            i2 = m2.j();
        }
        if (!a(m2, i2, j2)) {
            j();
        }
    }

    public final void a(M m2, long j2) {
        a(m2, m2.j(), j2);
    }

    public final boolean a(M m2, int i2, long j2) {
        long duration = m2.getDuration();
        if (duration != -9223372036854775807L) {
            j2 = Math.min(j2, duration);
        }
        return this.A.a(m2, i2, Math.max(j2, 0));
    }

    public boolean a(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (this.z == null || !a(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode == 90) {
                a(this.z);
            } else if (keyCode == 89) {
                d(this.z);
            } else if (keyEvent.getRepeatCount() == 0) {
                if (keyCode == 85) {
                    r rVar = this.A;
                    M m2 = this.z;
                    rVar.b(m2, !m2.f());
                } else if (keyCode == 87) {
                    b(this.z);
                } else if (keyCode == 88) {
                    c(this.z);
                } else if (keyCode == 126) {
                    this.A.b(this.z, true);
                } else if (keyCode == 127) {
                    this.A.b(this.z, false);
                }
            }
        }
        return true;
    }

    public static boolean a(Z z2, Z.b bVar) {
        if (z2.b() > 100) {
            return false;
        }
        int b2 = z2.b();
        for (int i2 = 0; i2 < b2; i2++) {
            if (z2.a(i2, bVar).f7352i == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }
}
