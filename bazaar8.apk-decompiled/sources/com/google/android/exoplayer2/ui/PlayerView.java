package com.google.android.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import c.e.a.a.K;
import c.e.a.a.L;
import c.e.a.a.M;
import c.e.a.a.N;
import c.e.a.a.Z;
import c.e.a.a.j.a.b;
import c.e.a.a.l.o;
import c.e.a.a.m.a.h;
import c.e.a.a.m.g;
import c.e.a.a.m.i;
import c.e.a.a.m.j;
import c.e.a.a.m.l;
import c.e.a.a.m.n;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.k;
import c.e.a.a.p.q;
import c.e.a.a.p.r;
import com.crashlytics.android.answers.BackgroundManager;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import java.util.ArrayList;
import java.util.List;

public class PlayerView extends FrameLayout implements b {

    /* renamed from: a  reason: collision with root package name */
    public final AspectRatioFrameLayout f12821a;

    /* renamed from: b  reason: collision with root package name */
    public final View f12822b;

    /* renamed from: c  reason: collision with root package name */
    public final View f12823c;

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f12824d;

    /* renamed from: e  reason: collision with root package name */
    public final SubtitleView f12825e;

    /* renamed from: f  reason: collision with root package name */
    public final View f12826f;

    /* renamed from: g  reason: collision with root package name */
    public final TextView f12827g;

    /* renamed from: h  reason: collision with root package name */
    public final g f12828h;

    /* renamed from: i  reason: collision with root package name */
    public final a f12829i;

    /* renamed from: j  reason: collision with root package name */
    public final FrameLayout f12830j;

    /* renamed from: k  reason: collision with root package name */
    public final FrameLayout f12831k;

    /* renamed from: l  reason: collision with root package name */
    public M f12832l;
    public boolean m;
    public boolean n;
    public Drawable o;
    public int p;
    public boolean q;
    public k<? super ExoPlaybackException> r;
    public CharSequence s;
    public int t;
    public boolean u;
    public boolean v;
    public boolean w;
    public int x;

    private final class a implements M.b, c.e.a.a.k.k, r, View.OnLayoutChangeListener, h.b, c.e.a.a.m.a.g {
        public a() {
        }

        public /* synthetic */ void a(int i2) {
            N.b((M.b) this, i2);
        }

        public /* synthetic */ void a(int i2, int i3) {
            q.a(this, i2, i3);
        }

        public /* synthetic */ void a(K k2) {
            N.a((M.b) this, k2);
        }

        public /* synthetic */ void a(Z z, Object obj, int i2) {
            N.a(this, z, obj, i2);
        }

        public /* synthetic */ void a(ExoPlaybackException exoPlaybackException) {
            N.a((M.b) this, exoPlaybackException);
        }

        public void a(List<c.e.a.a.k.b> list) {
            if (PlayerView.this.f12825e != null) {
                PlayerView.this.f12825e.a(list);
            }
        }

        public /* synthetic */ void a(boolean z) {
            N.a((M.b) this, z);
        }

        public /* synthetic */ void b() {
            N.a(this);
        }

        public void b(int i2) {
            if (PlayerView.this.d() && PlayerView.this.v) {
                PlayerView.this.c();
            }
        }

        public /* synthetic */ void b(boolean z) {
            N.b((M.b) this, z);
        }

        public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            PlayerView.b((TextureView) view, PlayerView.this.x);
        }

        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return PlayerView.this.g();
        }

        public void a(int i2, int i3, int i4, float f2) {
            float f3 = (i3 == 0 || i2 == 0) ? 1.0f : (((float) i2) * f2) / ((float) i3);
            if (PlayerView.this.f12823c instanceof TextureView) {
                if (i4 == 90 || i4 == 270) {
                    f3 = 1.0f / f3;
                }
                if (PlayerView.this.x != 0) {
                    PlayerView.this.f12823c.removeOnLayoutChangeListener(this);
                }
                int unused = PlayerView.this.x = i4;
                if (PlayerView.this.x != 0) {
                    PlayerView.this.f12823c.addOnLayoutChangeListener(this);
                }
                PlayerView.b((TextureView) PlayerView.this.f12823c, PlayerView.this.x);
            }
            PlayerView playerView = PlayerView.this;
            playerView.a(f3, playerView.f12821a, PlayerView.this.f12823c);
        }

        public void a() {
            if (PlayerView.this.f12822b != null) {
                PlayerView.this.f12822b.setVisibility(4);
            }
        }

        public void a(TrackGroupArray trackGroupArray, o oVar) {
            PlayerView.this.c(false);
        }

        public void a(boolean z, int i2) {
            PlayerView.this.h();
            PlayerView.this.i();
            if (!PlayerView.this.d() || !PlayerView.this.v) {
                PlayerView.this.a(false);
            } else {
                PlayerView.this.c();
            }
        }

        public void a(Surface surface) {
            if (PlayerView.this.f12832l != null) {
                M.e k2 = PlayerView.this.f12832l.k();
                if (k2 != null) {
                    k2.a(surface);
                }
            }
        }
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    @SuppressLint({"InlinedApi"})
    public final boolean a(int i2) {
        return i2 == 19 || i2 == 270 || i2 == 22 || i2 == 271 || i2 == 20 || i2 == 269 || i2 == 21 || i2 == 268 || i2 == 23;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        M m2 = this.f12832l;
        if (m2 != null && m2.c()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean z = false;
        if ((a(keyEvent.getKeyCode()) && this.m && !this.f12828h.d()) || a(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            z = true;
        }
        if (z) {
            a(true);
        }
        return z;
    }

    public View[] getAdOverlayViews() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f12831k;
        if (frameLayout != null) {
            arrayList.add(frameLayout);
        }
        g gVar = this.f12828h;
        if (gVar != null) {
            arrayList.add(gVar);
        }
        return (View[]) arrayList.toArray(new View[0]);
    }

    public ViewGroup getAdViewGroup() {
        FrameLayout frameLayout = this.f12830j;
        C0737e.a(frameLayout, (Object) "exo_ad_overlay must be present for ad playback");
        return frameLayout;
    }

    public boolean getControllerAutoShow() {
        return this.u;
    }

    public boolean getControllerHideOnTouch() {
        return this.w;
    }

    public int getControllerShowTimeoutMs() {
        return this.t;
    }

    public Drawable getDefaultArtwork() {
        return this.o;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.f12831k;
    }

    public M getPlayer() {
        return this.f12832l;
    }

    public int getResizeMode() {
        C0737e.b(this.f12821a != null);
        return this.f12821a.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.f12825e;
    }

    public boolean getUseArtwork() {
        return this.n;
    }

    public boolean getUseController() {
        return this.m;
    }

    public View getVideoSurfaceView() {
        return this.f12823c;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            return false;
        }
        return performClick();
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!this.m || this.f12832l == null) {
            return false;
        }
        a(true);
        return true;
    }

    public boolean performClick() {
        super.performClick();
        return g();
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.a aVar) {
        C0737e.b(this.f12821a != null);
        this.f12821a.setAspectRatioListener(aVar);
    }

    public void setControlDispatcher(c.e.a.a.r rVar) {
        C0737e.b(this.f12828h != null);
        this.f12828h.setControlDispatcher(rVar);
    }

    public void setControllerAutoShow(boolean z) {
        this.u = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.v = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        C0737e.b(this.f12828h != null);
        this.w = z;
    }

    public void setControllerShowTimeoutMs(int i2) {
        C0737e.b(this.f12828h != null);
        this.t = i2;
        if (this.f12828h.d()) {
            f();
        }
    }

    public void setControllerVisibilityListener(g.b bVar) {
        C0737e.b(this.f12828h != null);
        this.f12828h.setVisibilityListener(bVar);
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        C0737e.b(this.f12827g != null);
        this.s = charSequence;
        i();
    }

    @Deprecated
    public void setDefaultArtwork(Bitmap bitmap) {
        BitmapDrawable bitmapDrawable;
        if (bitmap == null) {
            bitmapDrawable = null;
        } else {
            bitmapDrawable = new BitmapDrawable(getResources(), bitmap);
        }
        setDefaultArtwork((Drawable) bitmapDrawable);
    }

    public void setErrorMessageProvider(k<? super ExoPlaybackException> kVar) {
        if (this.r != kVar) {
            this.r = kVar;
            i();
        }
    }

    public void setFastForwardIncrementMs(int i2) {
        C0737e.b(this.f12828h != null);
        this.f12828h.setFastForwardIncrementMs(i2);
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.q != z) {
            this.q = z;
            c(false);
        }
    }

    public void setPlaybackPreparer(L l2) {
        C0737e.b(this.f12828h != null);
        this.f12828h.setPlaybackPreparer(l2);
    }

    public void setPlayer(M m2) {
        C0737e.b(Looper.myLooper() == Looper.getMainLooper());
        C0737e.a(m2 == null || m2.r() == Looper.getMainLooper());
        M m3 = this.f12832l;
        if (m3 != m2) {
            if (m3 != null) {
                m3.b((M.b) this.f12829i);
                M.e k2 = this.f12832l.k();
                if (k2 != null) {
                    k2.b((r) this.f12829i);
                    View view = this.f12823c;
                    if (view instanceof TextureView) {
                        k2.a((TextureView) view);
                    } else if (view instanceof h) {
                        ((h) view).setVideoComponent(null);
                    } else if (view instanceof SurfaceView) {
                        k2.b((SurfaceView) view);
                    }
                }
                M.d v2 = this.f12832l.v();
                if (v2 != null) {
                    v2.a(this.f12829i);
                }
            }
            this.f12832l = m2;
            if (this.m) {
                this.f12828h.setPlayer(m2);
            }
            SubtitleView subtitleView = this.f12825e;
            if (subtitleView != null) {
                subtitleView.setCues(null);
            }
            h();
            i();
            c(true);
            if (m2 != null) {
                M.e k3 = m2.k();
                if (k3 != null) {
                    View view2 = this.f12823c;
                    if (view2 instanceof TextureView) {
                        k3.b((TextureView) view2);
                    } else if (view2 instanceof h) {
                        ((h) view2).setVideoComponent(k3);
                    } else if (view2 instanceof SurfaceView) {
                        k3.a((SurfaceView) view2);
                    }
                    k3.a((r) this.f12829i);
                }
                M.d v3 = m2.v();
                if (v3 != null) {
                    v3.b(this.f12829i);
                }
                m2.a((M.b) this.f12829i);
                a(false);
            } else {
                c();
            }
        }
    }

    public void setRepeatToggleModes(int i2) {
        C0737e.b(this.f12828h != null);
        this.f12828h.setRepeatToggleModes(i2);
    }

    public void setResizeMode(int i2) {
        C0737e.b(this.f12821a != null);
        this.f12821a.setResizeMode(i2);
    }

    public void setRewindIncrementMs(int i2) {
        C0737e.b(this.f12828h != null);
        this.f12828h.setRewindIncrementMs(i2);
    }

    @Deprecated
    public void setShowBuffering(boolean z) {
        setShowBuffering(z ? 1 : 0);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        C0737e.b(this.f12828h != null);
        this.f12828h.setShowMultiWindowTimeBar(z);
    }

    public void setShowShuffleButton(boolean z) {
        C0737e.b(this.f12828h != null);
        this.f12828h.setShowShuffleButton(z);
    }

    public void setShutterBackgroundColor(int i2) {
        View view = this.f12822b;
        if (view != null) {
            view.setBackgroundColor(i2);
        }
    }

    public void setUseArtwork(boolean z) {
        C0737e.b(!z || this.f12824d != null);
        if (this.n != z) {
            this.n = z;
            c(false);
        }
    }

    public void setUseController(boolean z) {
        C0737e.b(!z || this.f12828h != null);
        if (this.m != z) {
            this.m = z;
            if (z) {
                this.f12828h.setPlayer(this.f12832l);
            } else {
                g gVar = this.f12828h;
                if (gVar != null) {
                    gVar.a();
                    this.f12828h.setPlayer(null);
                }
            }
        }
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        View view = this.f12823c;
        if (view instanceof SurfaceView) {
            view.setVisibility(i2);
        }
    }

    public PlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void c() {
        g gVar = this.f12828h;
        if (gVar != null) {
            gVar.a();
        }
    }

    public final boolean d() {
        M m2 = this.f12832l;
        return m2 != null && m2.c() && this.f12832l.f();
    }

    public final boolean e() {
        M m2 = this.f12832l;
        boolean z = true;
        if (m2 == null) {
            return true;
        }
        int b2 = m2.b();
        if (!this.u || !(b2 == 1 || b2 == 4 || !this.f12832l.f())) {
            z = false;
        }
        return z;
    }

    public void f() {
        b(e());
    }

    public final boolean g() {
        if (!this.m || this.f12832l == null) {
            return false;
        }
        if (!this.f12828h.d()) {
            a(true);
        } else if (this.w) {
            this.f12828h.a();
        }
        return true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001d, code lost:
        if (r4.f12832l.f() == false) goto L_0x0020;
     */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void h() {
        /*
            r4 = this;
            android.view.View r0 = r4.f12826f
            if (r0 == 0) goto L_0x002b
            c.e.a.a.M r0 = r4.f12832l
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x0020
            int r0 = r0.b()
            r3 = 2
            if (r0 != r3) goto L_0x0020
            int r0 = r4.p
            if (r0 == r3) goto L_0x0021
            if (r0 != r1) goto L_0x0020
            c.e.a.a.M r0 = r4.f12832l
            boolean r0 = r0.f()
            if (r0 == 0) goto L_0x0020
            goto L_0x0021
        L_0x0020:
            r1 = 0
        L_0x0021:
            android.view.View r0 = r4.f12826f
            if (r1 == 0) goto L_0x0026
            goto L_0x0028
        L_0x0026:
            r2 = 8
        L_0x0028:
            r0.setVisibility(r2)
        L_0x002b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.PlayerView.h():void");
    }

    public final void i() {
        TextView textView = this.f12827g;
        if (textView != null) {
            CharSequence charSequence = this.s;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f12827g.setVisibility(0);
                return;
            }
            ExoPlaybackException exoPlaybackException = null;
            M m2 = this.f12832l;
            if (!(m2 == null || m2.b() != 1 || this.r == null)) {
                exoPlaybackException = this.f12832l.g();
            }
            if (exoPlaybackException != null) {
                this.f12827g.setText((CharSequence) this.r.a(exoPlaybackException).second);
                this.f12827g.setVisibility(0);
            } else {
                this.f12827g.setVisibility(8);
            }
        }
    }

    public void setShowBuffering(int i2) {
        if (this.p != i2) {
            this.p = i2;
            h();
        }
    }

    /* JADX INFO: finally extract failed */
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        boolean z;
        int i3;
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        int i6;
        boolean z4;
        boolean z5;
        int i7;
        int i8;
        boolean z6;
        boolean z7;
        Context context2 = context;
        AttributeSet attributeSet2 = attributeSet;
        if (isInEditMode()) {
            this.f12821a = null;
            this.f12822b = null;
            this.f12823c = null;
            this.f12824d = null;
            this.f12825e = null;
            this.f12826f = null;
            this.f12827g = null;
            this.f12828h = null;
            this.f12829i = null;
            this.f12830j = null;
            this.f12831k = null;
            ImageView imageView = new ImageView(context2);
            if (I.f9565a >= 23) {
                b(getResources(), imageView);
            } else {
                a(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i9 = l.exo_player_view;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, n.PlayerView, 0, 0);
            try {
                z4 = obtainStyledAttributes.hasValue(n.PlayerView_shutter_background_color);
                i6 = obtainStyledAttributes.getColor(n.PlayerView_shutter_background_color, 0);
                int resourceId = obtainStyledAttributes.getResourceId(n.PlayerView_player_layout_id, i9);
                z3 = obtainStyledAttributes.getBoolean(n.PlayerView_use_artwork, true);
                i5 = obtainStyledAttributes.getResourceId(n.PlayerView_default_artwork, 0);
                boolean z8 = obtainStyledAttributes.getBoolean(n.PlayerView_use_controller, true);
                i4 = obtainStyledAttributes.getInt(n.PlayerView_surface_type, 1);
                i3 = obtainStyledAttributes.getInt(n.PlayerView_resize_mode, 0);
                int i10 = obtainStyledAttributes.getInt(n.PlayerView_show_timeout, BackgroundManager.BACKGROUND_DELAY);
                boolean z9 = obtainStyledAttributes.getBoolean(n.PlayerView_hide_on_touch, true);
                boolean z10 = obtainStyledAttributes.getBoolean(n.PlayerView_auto_show, true);
                int i11 = resourceId;
                i8 = obtainStyledAttributes.getInteger(n.PlayerView_show_buffering, 0);
                boolean z11 = z9;
                this.q = obtainStyledAttributes.getBoolean(n.PlayerView_keep_content_on_player_reset, this.q);
                boolean z12 = obtainStyledAttributes.getBoolean(n.PlayerView_hide_during_ads, true);
                obtainStyledAttributes.recycle();
                z5 = z10;
                z = z8;
                z2 = z12;
                i7 = i10;
                i9 = i11;
                z6 = z11;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            z6 = true;
            i8 = 0;
            i7 = BackgroundManager.BACKGROUND_DELAY;
            z5 = true;
            z4 = false;
            i6 = 0;
            z3 = true;
            i5 = 0;
            z2 = true;
            i4 = 1;
            i3 = 0;
            z = true;
        }
        LayoutInflater.from(context).inflate(i9, this);
        this.f12829i = new a();
        setDescendantFocusability(262144);
        this.f12821a = (AspectRatioFrameLayout) findViewById(c.e.a.a.m.k.exo_content_frame);
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f12821a;
        if (aspectRatioFrameLayout != null) {
            a(aspectRatioFrameLayout, i3);
        }
        this.f12822b = findViewById(c.e.a.a.m.k.exo_shutter);
        View view = this.f12822b;
        if (view != null && z4) {
            view.setBackgroundColor(i6);
        }
        if (this.f12821a == null || i4 == 0) {
            this.f12823c = null;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i4 == 2) {
                this.f12823c = new TextureView(context2);
            } else if (i4 != 3) {
                this.f12823c = new SurfaceView(context2);
            } else {
                h hVar = new h(context2);
                hVar.setSurfaceListener(this.f12829i);
                hVar.setSingleTapListener(this.f12829i);
                this.f12823c = hVar;
            }
            this.f12823c.setLayoutParams(layoutParams);
            this.f12821a.addView(this.f12823c, 0);
        }
        this.f12830j = (FrameLayout) findViewById(c.e.a.a.m.k.exo_ad_overlay);
        this.f12831k = (FrameLayout) findViewById(c.e.a.a.m.k.exo_overlay);
        this.f12824d = (ImageView) findViewById(c.e.a.a.m.k.exo_artwork);
        this.n = z3 && this.f12824d != null;
        if (i5 != 0) {
            this.o = b.i.b.a.c(getContext(), i5);
        }
        this.f12825e = (SubtitleView) findViewById(c.e.a.a.m.k.exo_subtitles);
        SubtitleView subtitleView = this.f12825e;
        if (subtitleView != null) {
            subtitleView.b();
            this.f12825e.c();
        }
        this.f12826f = findViewById(c.e.a.a.m.k.exo_buffering);
        View view2 = this.f12826f;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        this.p = i8;
        this.f12827g = (TextView) findViewById(c.e.a.a.m.k.exo_error_message);
        TextView textView = this.f12827g;
        if (textView != null) {
            textView.setVisibility(8);
        }
        g gVar = (g) findViewById(c.e.a.a.m.k.exo_controller);
        View findViewById = findViewById(c.e.a.a.m.k.exo_controller_placeholder);
        if (gVar != null) {
            this.f12828h = gVar;
            z7 = false;
        } else if (findViewById != null) {
            z7 = false;
            this.f12828h = new g(context2, null, 0, attributeSet2);
            this.f12828h.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(this.f12828h, indexOfChild);
        } else {
            z7 = false;
            this.f12828h = null;
        }
        this.t = this.f12828h == null ? 0 : i7;
        this.w = z6;
        this.u = z5;
        this.v = z2;
        if (z && this.f12828h != null) {
            z7 = true;
        }
        this.m = z7;
        c();
    }

    public final void b(boolean z) {
        if (this.m) {
            this.f12828h.setShowTimeoutMs(z ? 0 : this.t);
            this.f12828h.f();
        }
    }

    public final void c(boolean z) {
        M m2 = this.f12832l;
        if (m2 == null || m2.p().a()) {
            if (!this.q) {
                b();
                a();
            }
            return;
        }
        if (z && !this.q) {
            a();
        }
        o u2 = this.f12832l.u();
        int i2 = 0;
        while (i2 < u2.f9336a) {
            if (this.f12832l.a(i2) != 2 || u2.a(i2) == null) {
                i2++;
            } else {
                b();
                return;
            }
        }
        a();
        if (this.n) {
            for (int i3 = 0; i3 < u2.f9336a; i3++) {
                c.e.a.a.l.n a2 = u2.a(i3);
                if (a2 != null) {
                    int i4 = 0;
                    while (i4 < a2.length()) {
                        Metadata metadata = a2.a(i4).f12512g;
                        if (metadata == null || !a(metadata)) {
                            i4++;
                        } else {
                            return;
                        }
                    }
                    continue;
                }
            }
            if (a(this.o)) {
                return;
            }
        }
        b();
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.o != drawable) {
            this.o = drawable;
            c(false);
        }
    }

    public boolean a(KeyEvent keyEvent) {
        return this.m && this.f12828h.a(keyEvent);
    }

    public void a(float f2, AspectRatioFrameLayout aspectRatioFrameLayout, View view) {
        if (aspectRatioFrameLayout != null) {
            if (view instanceof h) {
                f2 = 0.0f;
            }
            aspectRatioFrameLayout.setAspectRatio(f2);
        }
    }

    public final void b() {
        ImageView imageView = this.f12824d;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f12824d.setVisibility(4);
        }
    }

    public final void a(boolean z) {
        if ((!d() || !this.v) && this.m) {
            boolean z2 = this.f12828h.d() && this.f12828h.getShowTimeoutMs() <= 0;
            boolean e2 = e();
            if (z || z2 || e2) {
                b(e2);
            }
        }
    }

    @TargetApi(23)
    public static void b(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(j.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(i.exo_edit_mode_background_color, null));
    }

    public static void b(TextureView textureView, int i2) {
        float width = (float) textureView.getWidth();
        float height = (float) textureView.getHeight();
        if (width == 0.0f || height == 0.0f || i2 == 0) {
            textureView.setTransform(null);
            return;
        }
        Matrix matrix = new Matrix();
        float f2 = width / 2.0f;
        float f3 = height / 2.0f;
        matrix.postRotate((float) i2, f2, f3);
        RectF rectF = new RectF(0.0f, 0.0f, width, height);
        RectF rectF2 = new RectF();
        matrix.mapRect(rectF2, rectF);
        matrix.postScale(width / rectF2.width(), height / rectF2.height(), f2, f3);
        textureView.setTransform(matrix);
    }

    public final boolean a(Metadata metadata) {
        for (int i2 = 0; i2 < metadata.a(); i2++) {
            Metadata.Entry a2 = metadata.a(i2);
            if (a2 instanceof ApicFrame) {
                byte[] bArr = ((ApicFrame) a2).f12612e;
                return a((Drawable) new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
            }
        }
        return false;
    }

    public final boolean a(Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                a(((float) intrinsicWidth) / ((float) intrinsicHeight), this.f12821a, this.f12824d);
                this.f12824d.setImageDrawable(drawable);
                this.f12824d.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    public final void a() {
        View view = this.f12822b;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public static void a(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(j.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(i.exo_edit_mode_background_color));
    }

    public static void a(AspectRatioFrameLayout aspectRatioFrameLayout, int i2) {
        aspectRatioFrameLayout.setResizeMode(i2);
    }
}
