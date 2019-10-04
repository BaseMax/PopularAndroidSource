package cab.snapp.passenger.activities.root;

import android.app.ActivityManager;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.base.BaseActivity;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.d;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.OnActivityResultModel;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.k;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.f;
import com.a.a.a;
import java.util.UUID;
import javax.inject.Inject;

public class RootActivity extends BaseActivity {
    private static final String h = UUID.randomUUID().toString();
    @Inject
    o c;
    @Inject
    b d;
    @Inject
    g e;
    @Inject
    d f;
    @Inject
    c g;
    private boolean i = true;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m = false;
    private boolean n = false;
    private boolean o = false;
    private cab.snapp.snappdialog.b p;
    private boolean q = false;
    private NavController r;
    private io.reactivex.b.c s;

    public final int getContainerViewGroupId() {
        return R.id.activity_root_controller_container;
    }

    public final int onLayout() {
        return R.layout.activity_root;
    }

    public static String getPrivateChannelId() {
        return cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(h);
    }

    public void setNightMode() {
        a(this, 2);
    }

    public void setDayMode() {
        a(this, 1);
    }

    public void setAutoDayNightMode() {
        a(this, 0);
    }

    private boolean a() {
        if (this.r.getCurrentDestination() != null) {
            if (this.r.getCurrentDestination().getId() != R.id.overTheMapEmptyController) {
                try {
                    this.r.navigateUp();
                    this.g.reportScreenName("Map Screen");
                    return true;
                } catch (Exception e2) {
                    a.logException(e2);
                    e2.printStackTrace();
                }
            }
            return false;
        }
        this.g.reportScreenName("Map Screen");
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0046, code lost:
        if (r2.e.getCurrentState() == 0) goto L_0x007c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b() {
        /*
            r2 = this;
            boolean r0 = r2.n
            if (r0 != 0) goto L_0x007c
            boolean r0 = r2.o
            if (r0 != 0) goto L_0x007c
            androidx.navigation.NavController r0 = r2.getNavigationController()
            androidx.navigation.NavDestination r0 = r0.getCurrentDestination()
            if (r0 == 0) goto L_0x0069
            androidx.navigation.NavController r0 = r2.getNavigationController()
            androidx.navigation.NavDestination r0 = r0.getCurrentDestination()
            int r0 = r0.getId()
            r1 = 2131362284(0x7f0a01ec, float:1.8344344E38)
            if (r0 != r1) goto L_0x0069
            cab.snapp.passenger.c.g r0 = r2.e
            boolean r0 = r0.stateUp()
            if (r0 != 0) goto L_0x007f
            cab.snapp.passenger.c.d r0 = r2.f
            boolean r0 = r0.isContentValid()
            if (r0 == 0) goto L_0x004d
            boolean r0 = r2.k
            if (r0 != 0) goto L_0x0049
            cab.snapp.passenger.c.g r0 = r2.e
            boolean r0 = r0.isInRide()
            if (r0 == 0) goto L_0x0040
            goto L_0x0049
        L_0x0040:
            cab.snapp.passenger.c.g r0 = r2.e
            int r0 = r0.getCurrentState()
            if (r0 != 0) goto L_0x007f
            goto L_0x007c
        L_0x0049:
            r2.finish()
            return
        L_0x004d:
            cab.snapp.passenger.c.g r0 = r2.e
            int r0 = r0.getCurrentState()
            if (r0 != 0) goto L_0x0059
            r2.finish()
            return
        L_0x0059:
            cab.snapp.passenger.c.g r0 = r2.e
            boolean r0 = r0.isInRide()
            if (r0 == 0) goto L_0x0065
            r2.finish()
            return
        L_0x0065:
            super.onBackPressed()
            return
        L_0x0069:
            androidx.navigation.NavController r0 = r2.getNavigationController()
            androidx.navigation.NavDestination r0 = r0.getCurrentDestination()
            if (r0 != 0) goto L_0x0077
            r2.finish()
            return
        L_0x0077:
            cab.snapp.passenger.f.o r0 = r2.c
            r0.cancelAll()
        L_0x007c:
            super.onBackPressed()
        L_0x007f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.passenger.activities.root.RootActivity.b():void");
    }

    public void setShouldHandleBack(boolean z) {
        this.i = z;
    }

    public void setIsDrawerOpened(boolean z) {
        this.j = z;
    }

    public void setJekBottomSheetOpened(boolean z) {
        this.k = z;
    }

    public void setBottomSheetOpened(boolean z) {
        this.l = z;
    }

    public void setOptionsAreShown(boolean z) {
        this.n = z;
    }

    public void setInRideOptionsAreShown(boolean z) {
        this.o = z;
    }

    public boolean areOptionsShown() {
        return this.n;
    }

    public boolean areInRideOptionsShown() {
        return this.o;
    }

    public void showLoadingForSnappCabItemClickedFromSnappServices() {
        if (this.p == null) {
            this.p = new b.a(this).setTheme(0).setDialogViewType(new f.a().setTitle(getString(R.string.please_wait)).build()).setCancelable(false).build();
        }
        this.p.show();
    }

    public void hideLoadingForSnappCabItemClickedFromSnappServices() {
        cab.snapp.snappdialog.b bVar = this.p;
        if (bVar != null) {
            bVar.dismiss();
            this.p.cancel();
        }
    }

    public void resetStatusBarColor() {
        cab.snapp.snappuikit.c.a.setStatusBarColorRes(this, R.color.white);
    }

    public NavController getOverTheMapNavController() {
        NavController navController = this.r;
        if (navController != null) {
            return navController;
        }
        this.r = Navigation.findNavController(this, R.id.activity_root_over_the_map_units_container);
        return this.r;
    }

    public final void onCreateFinished(Bundle bundle) {
        this.m = true;
        BaseApplication.setupNotificationManager(this);
        BaseApplication.get(this).getDataManagerComponent().inject(this);
        if (bundle != null) {
            this.q = true;
            startActivity(new Intent(this, RootActivity.class));
            finish();
        } else {
            this.q = false;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            setTaskDescription(new ActivityManager.TaskDescription(getString(R.string.app_name), BitmapFactory.decodeResource(getResources(), R.mipmap.ic_launcher), getResources().getColor(R.color.white_seven)));
        }
    }

    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    public synchronized void onBackPressed() {
        if (this.i && !this.j) {
            if (this.r != null) {
                if (a()) {
                    resetStatusBarColor();
                    return;
                } else if (getNavigationController() == null) {
                    finish();
                    return;
                } else if (!this.l) {
                    b();
                    return;
                }
            } else if (getNavigationController() == null) {
                finish();
                return;
            } else if (!this.l) {
                b();
                return;
            }
        }
        super.onBackPressed();
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(getPrivateChannelId(), new OnActivityResultModel(i2, i3, intent));
    }

    public void onDestroy() {
        this.m = false;
        io.reactivex.b.c cVar = this.s;
        if (cVar != null) {
            cVar.dispose();
        }
        super.onDestroy();
    }

    public void onStop() {
        this.m = false;
        io.reactivex.b.c cVar = this.s;
        if (cVar != null) {
            cVar.dispose();
        }
        super.onStop();
    }

    public void onPause() {
        this.m = false;
        super.onPause();
    }

    public void onResume() {
        super.onResume();
        try {
            String str = getPackageManager().getPackageInfo("com.google.android.gms", 0).versionName;
            if (str != null && !str.isEmpty()) {
                this.g.sendAnalyticsEvent(c.C0021c.TECHNICAL, c.b.PLAY_SERVICE_VERSION, str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            a.logException(e2);
        }
        if (this.d.getConfig() != null) {
            k.initMap(this, this.d.getMapType(), this.d.getMapBoxToken(), this.d.getMapBoxStyleUrl());
        }
        g gVar = this.e;
        if (gVar == null) {
            return;
        }
        if ((gVar.getCurrentState() == 3 || this.e.isInRide() || this.q) && !this.m) {
            this.s = this.d.refreshConfigForRideState().subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    RootActivity.this.a((ConfigResponse) obj);
                }
            }, $$Lambda$0Zc8eoFUqMPXeC6GM8jq7_68cWI.INSTANCE);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ConfigResponse configResponse) throws Exception {
        this.q = false;
        this.e.handleRefreshedConfigForRideState(configResponse);
    }
}
