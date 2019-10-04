package com.farsitel.bazaar.player;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.o.a.C0285i;
import c.c.a.l.f;
import c.c.a.l.k;
import c.c.a.l.l;
import c.c.a.l.o;
import c.c.a.l.r;
import c.c.a.l.s;
import c.c.a.l.u;
import c.c.a.l.v;
import c.c.a.l.w;
import c.c.a.l.x;
import c.c.a.l.z;
import c.e.a.a.m.p;
import com.crashlytics.android.answers.SessionEvent;
import com.crashlytics.android.core.MetaDataStore;
import com.farsitel.bazaar.analytics.model.what.PlayerActionEvent;
import com.farsitel.bazaar.analytics.model.where.PlayerScreen;
import com.farsitel.bazaar.player.CafePlayer;
import com.farsitel.bazaar.player.view.InfoControl;
import com.farsitel.bazaar.player.view.PlayPauseControl;
import com.farsitel.bazaar.player.view.PlaybackState;
import com.google.android.exoplayer2.ui.DefaultTimeBar;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import d.a.a.b;
import h.f.b.j;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* compiled from: VideoPlayerActivity.kt */
public final class VideoPlayerActivity extends b {
    public static final a u = new a(null);
    public long A;
    public HashMap B;
    public CafePlayer v;
    public WeakReference<BottomSheetBehavior<LinearLayout>> w;
    public c.c.a.l.b.b x;
    public f y;
    public DefaultTimeBar z;

    /* compiled from: VideoPlayerActivity.kt */
    public static final class a {
        public a() {
        }

        public final void a(Activity activity, f fVar) {
            j.b(activity, SessionEvent.ACTIVITY_KEY);
            j.b(fVar, "playerParams");
            Intent intent = new Intent(activity, VideoPlayerActivity.class);
            intent.putExtras(fVar.j());
            activity.startActivity(intent);
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }

        public final void a(Fragment fragment, f fVar) {
            j.b(fragment, "fragment");
            j.b(fVar, "playerParams");
            C0285i x = fragment.x();
            if (x != null) {
                j.a((Object) x, "fragment.activity!!");
                a((Activity) x, fVar);
                return;
            }
            j.a();
            throw null;
        }
    }

    public static final /* synthetic */ CafePlayer a(VideoPlayerActivity videoPlayerActivity) {
        CafePlayer cafePlayer = videoPlayerActivity.v;
        if (cafePlayer != null) {
            return cafePlayer;
        }
        j.c("cafePlayer");
        throw null;
    }

    public final void A() {
        Resources resources = getResources();
        j.a((Object) resources, "resources");
        if (resources.getConfiguration().orientation == 2) {
            a(true);
        }
    }

    public void attachBaseContext(Context context) {
        j.b(context, "newBase");
        super.attachBaseContext(c.c.a.d.g.b.f4814b.b(context));
    }

    public View d(int i2) {
        if (this.B == null) {
            this.B = new HashMap();
        }
        View view = (View) this.B.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i2);
        this.B.put(Integer.valueOf(i2), findViewById);
        return findViewById;
    }

    public void onBackPressed() {
        WeakReference<BottomSheetBehavior<LinearLayout>> weakReference = this.w;
        if (weakReference != null) {
            BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) weakReference.get();
            if (bottomSheetBehavior == null || bottomSheetBehavior.c() != 3) {
                Resources resources = getResources();
                j.a((Object) resources, "resources");
                if (resources.getConfiguration().orientation == 2) {
                    setRequestedOrientation(1);
                } else {
                    WeakReference<BottomSheetBehavior<LinearLayout>> weakReference2 = this.w;
                    if (weakReference2 != null) {
                        BottomSheetBehavior bottomSheetBehavior2 = (BottomSheetBehavior) weakReference2.get();
                        if (bottomSheetBehavior2 == null || bottomSheetBehavior2.c() != 4) {
                            WeakReference<BottomSheetBehavior<LinearLayout>> weakReference3 = this.w;
                            if (weakReference3 != null) {
                                BottomSheetBehavior bottomSheetBehavior3 = (BottomSheetBehavior) weakReference3.get();
                                if (bottomSheetBehavior3 != null) {
                                    bottomSheetBehavior3.c(4);
                                }
                            } else {
                                j.c("behavior");
                                throw null;
                            }
                        } else {
                            super.onBackPressed();
                        }
                    } else {
                        j.c("behavior");
                        throw null;
                    }
                }
                return;
            }
            WeakReference<BottomSheetBehavior<LinearLayout>> weakReference4 = this.w;
            if (weakReference4 != null) {
                BottomSheetBehavior bottomSheetBehavior4 = (BottomSheetBehavior) weakReference4.get();
                if (bottomSheetBehavior4 != null) {
                    bottomSheetBehavior4.c(4);
                }
                return;
            }
            j.c("behavior");
            throw null;
        }
        j.c("behavior");
        throw null;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(1024, 1024);
        setContentView(l.activity_video);
        this.z = (DefaultTimeBar) findViewById(k.exo_progress);
        DefaultTimeBar defaultTimeBar = this.z;
        if (defaultTimeBar != null) {
            defaultTimeBar.a(z());
        }
        BottomSheetBehavior b2 = BottomSheetBehavior.b((LinearLayout) d(k.bottomSheetContainer));
        j.a((Object) b2, "behavior");
        b2.c(4);
        this.w = new WeakReference<>(b2);
        RecyclerView recyclerView = (RecyclerView) d(k.list);
        j.a((Object) recyclerView, "list");
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        PlayerView playerView = (PlayerView) d(k.exoPlayerView);
        j.a((Object) playerView, "exoPlayerView");
        playerView.setKeepScreenOn(true);
        f.a aVar = f.f6115b;
        Intent intent = getIntent();
        j.a((Object) intent, "intent");
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.y = aVar.a(extras);
            CafePlayer.a aVar2 = CafePlayer.f12300e;
            PlayerView playerView2 = (PlayerView) d(k.exoPlayerView);
            j.a((Object) playerView2, "exoPlayerView");
            f fVar = this.y;
            if (fVar != null) {
                c.c.a.l.b.b bVar = this.x;
                if (bVar != null) {
                    this.v = aVar2.a(this, playerView2, fVar, bVar);
                    CafePlayer cafePlayer = this.v;
                    if (cafePlayer != null) {
                        cafePlayer.v();
                        cafePlayer.k().a(this, new q(this, this, b2));
                        cafePlayer.m().a(this, new r(this, this, b2));
                        cafePlayer.j().a(this, new s(this, this, b2));
                        cafePlayer.n().a(this, new u(cafePlayer, this, this, b2));
                        cafePlayer.q().a(this, new v(cafePlayer, this, this, b2));
                        cafePlayer.p().a(this, new w(this, this, b2));
                        cafePlayer.o().a(this, new x(this, this, b2));
                        ((InfoControl) d(k.buttonInfoControl)).setOnClickListener(new y(cafePlayer));
                        VideoPlayerActivity$onCreate$playButtonClick$1 videoPlayerActivity$onCreate$playButtonClick$1 = new VideoPlayerActivity$onCreate$playButtonClick$1(this);
                        ((PlayPauseControl) d(k.buttonPlayPause)).setOnClickListener(new z(videoPlayerActivity$onCreate$playButtonClick$1));
                        ((ImageView) d(k.exoPlay)).setOnClickListener(new z(videoPlayerActivity$onCreate$playButtonClick$1));
                        ((ImageView) d(k.exoPause)).setOnClickListener(new z(videoPlayerActivity$onCreate$playButtonClick$1));
                        VideoPlayerActivity$onCreate$fullScreenClick$1 videoPlayerActivity$onCreate$fullScreenClick$1 = new VideoPlayerActivity$onCreate$fullScreenClick$1(this);
                        ((ImageView) d(k.buttonFullScreen)).setOnClickListener(new z(videoPlayerActivity$onCreate$fullScreenClick$1));
                        ((ImageView) d(k.buttonFullScreenLive)).setOnClickListener(new z(videoPlayerActivity$onCreate$fullScreenClick$1));
                        A();
                        return;
                    }
                    j.c("cafePlayer");
                    throw null;
                }
                j.c("statsRepository");
                throw null;
            }
            j.a();
            throw null;
        }
        throw new IllegalArgumentException("Required value was null.");
    }

    public void onDestroy() {
        ((PlayerView) d(k.exoPlayerView)).setControllerVisibilityListener(null);
        super.onDestroy();
    }

    public void onPause() {
        if (!isChangingConfigurations()) {
            CafePlayer cafePlayer = this.v;
            if (cafePlayer != null) {
                cafePlayer.r();
            } else {
                j.c("cafePlayer");
                throw null;
            }
        }
        super.onPause();
    }

    public void onResume() {
        if (!isChangingConfigurations()) {
            CafePlayer cafePlayer = this.v;
            if (cafePlayer != null) {
                cafePlayer.t();
                A();
            } else {
                j.c("cafePlayer");
                throw null;
            }
        }
        super.onResume();
    }

    public void onStart() {
        if (!isChangingConfigurations()) {
            CafePlayer cafePlayer = this.v;
            if (cafePlayer != null) {
                cafePlayer.t();
            } else {
                j.c("cafePlayer");
                throw null;
            }
        }
        super.onStart();
    }

    public void onStop() {
        if (!isChangingConfigurations()) {
            CafePlayer cafePlayer = this.v;
            if (cafePlayer != null) {
                cafePlayer.r();
            } else {
                j.c("cafePlayer");
                throw null;
            }
        }
        super.onStop();
    }

    public final p.a z() {
        return new c.c.a.l.p(this);
    }

    public final void a(PlaybackState playbackState) {
        ImageView imageView = (ImageView) d(k.exoPlay);
        j.a((Object) imageView, "exoPlay");
        c.c.a.d.b.l.a(imageView);
        ImageView imageView2 = (ImageView) d(k.exoPause);
        j.a((Object) imageView2, "exoPause");
        c.c.a.d.b.l.a(imageView2);
        int i2 = o.f6127a[playbackState.ordinal()];
        if (i2 == 1) {
            ImageView imageView3 = (ImageView) d(k.exoPause);
            j.a((Object) imageView3, "exoPause");
            c.c.a.d.b.l.c(imageView3);
        } else if (i2 == 2) {
            ImageView imageView4 = (ImageView) d(k.exoPlay);
            j.a((Object) imageView4, "exoPlay");
            c.c.a.d.b.l.c(imageView4);
        } else if (i2 == 3) {
            ImageView imageView5 = (ImageView) d(k.exoPause);
            j.a((Object) imageView5, "exoPause");
            c.c.a.d.b.l.c(imageView5);
        } else if (i2 == 4 || i2 == 5) {
            ImageView imageView6 = (ImageView) d(k.exoPlay);
            j.a((Object) imageView6, "exoPlay");
            c.c.a.d.b.l.c(imageView6);
        }
    }

    public final void a(BottomSheetBehavior<?> bottomSheetBehavior) {
        int i2 = 4;
        if (bottomSheetBehavior.c() == 4) {
            i2 = 3;
        }
        bottomSheetBehavior.c(i2);
    }

    public final void a(boolean z2) {
        if (z2) {
            if (Build.VERSION.SDK_INT >= 19) {
                Window window = getWindow();
                j.a((Object) window, "window");
                View decorView = window.getDecorView();
                j.a((Object) decorView, "window.decorView");
                decorView.setSystemUiVisibility(4871);
                return;
            }
            getWindow().addFlags(1024);
            getWindow().clearFlags(2048);
        } else if (Build.VERSION.SDK_INT >= 19) {
            Window window2 = getWindow();
            j.a((Object) window2, "window");
            View decorView2 = window2.getDecorView();
            j.a((Object) decorView2, "window.decorView");
            decorView2.setSystemUiVisibility(1280);
        } else {
            getWindow().addFlags(2048);
            getWindow().clearFlags(1024);
        }
    }

    public static /* synthetic */ void a(VideoPlayerActivity videoPlayerActivity, PlayerActionEvent.PlayerAction playerAction, Map map, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            map = null;
        }
        videoPlayerActivity.a(playerAction, (Map<String, String>) map);
    }

    public final void a(PlayerActionEvent.PlayerAction playerAction, Map<String, String> map) {
        j.b(playerAction, "action");
        f fVar = this.y;
        if (fVar != null) {
            c.c.a.a.a aVar = c.c.a.a.a.f4477c;
            String g2 = fVar.g();
            String uri = fVar.a().toString();
            j.a((Object) uri, "params.rawUrl.toString()");
            boolean i2 = fVar.i();
            CafePlayer cafePlayer = this.v;
            if (cafePlayer != null) {
                long l2 = cafePlayer.l();
                CafePlayer cafePlayer2 = this.v;
                if (cafePlayer2 != null) {
                    long j2 = l2;
                    long h2 = cafePlayer2.h();
                    String b2 = fVar.b();
                    PlayerActionEvent playerActionEvent = r2;
                    PlayerActionEvent playerActionEvent2 = new PlayerActionEvent(playerAction, g2, uri, i2, j2, h2, b2, null, map, 128, null);
                    c.c.a.a.a.a aVar2 = new c.c.a.a.a.a(MetaDataStore.USERDATA_SUFFIX, playerActionEvent, new PlayerScreen());
                    aVar.a(aVar2);
                    return;
                }
                j.c("cafePlayer");
                throw null;
            }
            j.c("cafePlayer");
            throw null;
        }
    }
}
