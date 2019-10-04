package cab.snapp.passenger.units.main;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.drawerlayout.widget.DrawerLayout;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.ChangeLogItem;
import cab.snapp.passenger.data.models.OptionalConfig;
import cab.snapp.passenger.data.models.ShowCaseItemDao;
import cab.snapp.passenger.data.models.snapp_group.BannerItem;
import cab.snapp.passenger.data.models.snapp_group.ServiceItem;
import cab.snapp.passenger.data.models.snapp_group.ServiceTypeItem;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.main.a.a;
import cab.snapp.passenger.units.main.a.b;
import cab.snapp.passenger.units.main.a.e;
import com.google.android.gms.common.api.k;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

public final class d extends BasePresenter<MainView, b> implements b {

    /* renamed from: a  reason: collision with root package name */
    View.OnClickListener f917a = new View.OnClickListener() {
        public final void onClick(View view) {
            d.this.f(view);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    View.OnClickListener f918b = new View.OnClickListener() {
        public final void onClick(View view) {
            d.this.e(view);
        }
    };
    View.OnClickListener c = new View.OnClickListener() {
        public final void onClick(View view) {
            d.this.d(view);
        }
    };
    View.OnClickListener d = new View.OnClickListener() {
        public final void onClick(View view) {
            d.this.c(view);
        }
    };
    @Inject
    o e;
    @Inject
    c f;
    boolean g;
    boolean h;
    private final float i = 0.2f;
    private OptionalConfig j;
    private boolean k;
    private cab.snapp.passenger.units.main.a.c l;
    private cab.snapp.passenger.units.main.a.d m;
    private ViewTreeObserver.OnGlobalLayoutListener n;
    private boolean o;
    private boolean p;
    /* access modifiers changed from: private */
    public boolean q;
    /* access modifiers changed from: private */
    public boolean r;
    private boolean s;
    private e t;
    private boolean u;
    /* access modifiers changed from: private */
    public boolean v = false;

    /* access modifiers changed from: private */
    public /* synthetic */ void f(View view) {
        if (getInteractor() != null) {
            ((b) getInteractor()).reportPopUpLocationPositiveButtonClickedToAppMetrica();
        }
        if (view.getContext() != null) {
            view.getContext().startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        if (getInteractor() != null) {
            ((b) getInteractor()).reportPopUpLocationNegativeButtonClickedToAppMetrica();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        if (getInteractor() != null) {
            ((b) getInteractor()).reportPopUpLocationPositiveButtonClickedToAppMetrica();
        }
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", view.getContext().getPackageName(), null));
        view.getContext().startActivity(intent);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        if (getInteractor() != null) {
            ((b) getInteractor()).reportPopUpLocationNegativeButtonClickedToAppMetrica();
        }
    }

    public final void viewIsReady() {
        if (this.view != null) {
            if (!this.p || ((MainView) this.view).f878a == null) {
                ((MainView) this.view).snappJekServiceTypesControl.setVisibility(8);
                ((MainView) this.view).snappJekFrame.setVisibility(8);
                closeJekBottomSheet();
                return;
            }
            cab.snapp.passenger.units.main.a.c cVar = new cab.snapp.passenger.units.main.a.c(((MainView) this.view).getWindowHeightWithoutStatusBarAndToolbar(), ((MainView) this.view).getHeaderHeight(), ((MainView) this.view).getAppbarHeight(), 0.2f, ((MainView) this.view).snappJekFrame, ((MainView) this.view).mapLayout, new a() {
                public final void onExpanded() {
                    boolean unused = d.this.r = true;
                    if (d.this.getInteractor() != null) {
                        ((b) d.this.getInteractor()).handleJekBottomSheetOpened();
                    }
                    if (d.this.getView() != null) {
                        ((MainView) d.this.getView()).lockDrawer();
                        ((MainView) d.this.getView()).hideUpdateBanner();
                    }
                }

                public final void onHalfExpanded() {
                    boolean unused = d.this.r = true;
                    if (d.this.getInteractor() != null) {
                        ((b) d.this.getInteractor()).handleJekBottomSheetOpened();
                    }
                    if (d.this.getView() != null) {
                        ((MainView) d.this.getView()).lockDrawer();
                        ((MainView) d.this.getView()).hideUpdateBanner();
                    }
                }

                public final void onCollapsed() {
                    boolean unused = d.this.r = false;
                    if (d.this.getInteractor() != null) {
                        ((b) d.this.getInteractor()).handleJekBottomSheetClosed();
                        ((b) d.this.getInteractor()).checkForUpdateBanner();
                    }
                    if (d.this.getView() != null) {
                        ((MainView) d.this.getView()).unlockDrawer();
                    }
                }

                public final void onHidden() {
                    boolean unused = d.this.r = false;
                    if (d.this.getInteractor() != null) {
                        ((b) d.this.getInteractor()).handleJekBottomSheetClosed();
                        ((b) d.this.getInteractor()).checkForUpdateBanner();
                    }
                    if (d.this.getView() != null) {
                        ((MainView) d.this.getView()).unlockDrawer();
                    }
                }
            });
            this.l = cVar;
            ((MainView) this.view).f878a.setBottomSheetCallback(this.l);
            cab.snapp.passenger.units.main.a.d dVar = new cab.snapp.passenger.units.main.a.d(((MainView) this.view).getAppbarHeight(), ((MainView) this.view).getHeaderStateChangeHeight(), ((MainView) this.view).snappJekServiceTypesControl, this, ((MainView) this.view).f878a);
            this.m = dVar;
            new Handler().postDelayed(new Runnable() {
                public final void run() {
                    d.this.d();
                }
            }, 500);
            this.t.setContentOnClickListener(new e.d() {
                public final void onContentClicked(BannerItem bannerItem, int i) {
                    d.this.a(bannerItem, i);
                }
            });
            this.t.setItemOnClickListener(new e.C0022e() {
                public final void onItemClicked(ServiceItem serviceItem) {
                    d.this.a(serviceItem);
                }
            });
            this.t.setRideItemOnClickListener(new e.f() {
                public final void onItemClicked(int i) {
                    d.this.a(i);
                }
            });
            this.t.setSnappJekBottomSheetCallback(this.l);
            this.t.setSnappJekBottomSheetScrollListener(this.m);
            ((MainView) this.view).displaySnappServices(this.t);
            ((MainView) this.view).snappJekRecyclerView.addOnScrollListener(this.m);
            if (this.u) {
                ((MainView) this.view).snappJekFrame.setVisibility(8);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void d() {
        if (this.s) {
            openJekBottomSheet();
        }
    }

    public final void setUserType(boolean z) {
        this.p = z;
    }

    public final void setShouldShowJek(boolean z) {
        this.s = z;
    }

    public final void openJekBottomSheet() {
        if (getView() != null) {
            ((MainView) getView()).f878a.setState(3);
            ((MainView) this.view).snappJekFrame.setVisibility(0);
        }
    }

    public final void closeJekBottomSheet() {
        if (getView() != null) {
            this.h = false;
            ((MainView) getView()).f878a.setState(4);
            cab.snapp.passenger.units.main.a.d dVar = this.m;
            if (dVar != null) {
                dVar.hideHeader();
            }
        }
    }

    public final void scrollJekRecyclerViewToTop() {
        if (getView() != null && ((MainView) getView()).snappJekRecyclerView.getLayoutManager() != null) {
            ((MainView) getView()).snappJekRecyclerView.getLayoutManager().smoothScrollToPosition(((MainView) getView()).snappJekRecyclerView, null, 0);
        }
    }

    public final void openBottomSheet() {
        if (getView() != null) {
            ((MainView) getView()).openBottomSheet();
        }
    }

    public final void closeBottomSheet() {
        if (getView() != null) {
            ((MainView) getView()).closeBottomSheet();
        }
    }

    public final void onSnappJekDataProvided(List<BannerItem> list, List<ServiceItem> list2, List<ServiceTypeItem> list3) {
        this.t = new e(list, list2, list3);
        if (list3 != null && list3.size() != 0 && getView() != null) {
            int size = list3.size();
            if (size == 1) {
                ((MainView) getView()).firstServiceTypeItem.setVisibility(0);
                ((MainView) getView()).secondServiceTypeItem.setVisibility(8);
                ((MainView) getView()).thirdServiceTypeItem.setVisibility(8);
            } else if (size == 2) {
                ((MainView) getView()).firstServiceTypeItem.setVisibility(0);
                ((MainView) getView()).secondServiceTypeItem.setVisibility(0);
                ((MainView) getView()).thirdServiceTypeItem.setVisibility(8);
            } else if (size != 3) {
                ((MainView) getView()).firstServiceTypeItem.setVisibility(0);
                ((MainView) getView()).secondServiceTypeItem.setVisibility(0);
                ((MainView) getView()).thirdServiceTypeItem.setVisibility(0);
            } else {
                ((MainView) getView()).firstServiceTypeItem.setVisibility(0);
                ((MainView) getView()).secondServiceTypeItem.setVisibility(0);
                ((MainView) getView()).thirdServiceTypeItem.setVisibility(0);
            }
            for (int i2 = 0; i2 < list3.size(); i2++) {
                ServiceTypeItem serviceTypeItem = list3.get(i2);
                if (i2 == 0) {
                    ((MainView) getView()).firstServiceTypeItemTextView.setText(serviceTypeItem.getName());
                    if (serviceTypeItem.getIconUrl() != null && !TextUtils.isEmpty(serviceTypeItem.getIconUrl())) {
                        Picasso.get().load(serviceTypeItem.getIconUrl()).into(((MainView) getView()).firstServiceTypeItemImageView);
                    }
                } else if (i2 == 1) {
                    ((MainView) getView()).secondServiceTypeItemTextView.setText(serviceTypeItem.getName());
                    if (serviceTypeItem.getIconUrl() != null && !TextUtils.isEmpty(serviceTypeItem.getIconUrl())) {
                        Picasso.get().load(serviceTypeItem.getIconUrl()).into(((MainView) getView()).secondServiceTypeItemImageView);
                    }
                } else if (i2 == 2) {
                    ((MainView) getView()).thirdServiceTypeItemTextView.setText(serviceTypeItem.getName());
                    String iconUrl = serviceTypeItem.getIconUrl();
                    if (iconUrl != null && !TextUtils.isEmpty(iconUrl)) {
                        Picasso.get().load(iconUrl).into(((MainView) getView()).thirdServiceTypeItemImageView);
                    }
                }
            }
        }
    }

    public final void onClosingSideMenu() {
        if (getView() != null) {
            ((MainView) getView()).closeDrawer();
        }
    }

    public final void onToggleDrawer() {
        if (getView() != null) {
            ((MainView) getView()).toggleDrawer();
        }
    }

    private void b(int i2) {
        if (getView() != null) {
            ((MainView) getView()).getLocationSelectorImageButton().setImageResource(i2);
        }
    }

    private void a() {
        if (getView() != null) {
            ((MainView) getView()).getLocationSelectorImageButton().clearAnimation();
            ((MainView) getView()).getLocationSelectorImageButton().setVisibility(8);
            ((MainView) getView()).hideLocationSelectorShadow();
            ((MainView) getView()).hideLocationSelectorDot();
        }
    }

    private void b() {
        if (getView() != null) {
            ((MainView) getView()).getLocationSelectorImageButton().clearAnimation();
            ((MainView) getView()).getLocationSelectorImageButton().setVisibility(0);
            ((MainView) getView()).showLocationSelectorShadow();
            ((MainView) getView()).showLocationSelectorDot();
            ((MainView) getView()).getLocationSelectorImageButton().setEnabled(true);
        }
    }

    public final void onUpdateLocationSelectorContentDescription(int i2) {
        if (getView() != null) {
            ((MainView) getView()).setLocationSelectorContentDescription(i2);
        }
    }

    public final View getFooterContainerView() {
        if (getView() != null) {
            return ((MainView) getView()).getFooterContainerView();
        }
        return null;
    }

    public final View getHeaderContainerView() {
        if (getView() != null) {
            return ((MainView) getView()).getHeaderContainerView();
        }
        return null;
    }

    public final void onIdle(int i2) {
        b(i2);
        if (getView() != null) {
            b();
            ((MainView) getView()).showMyLocation();
        }
    }

    public final void onOriginSelected(int i2) {
        b(i2);
        b();
        closeJekBottomSheet();
        if (getView() != null) {
            ((MainView) getView()).showMyLocation();
        }
    }

    public final void onDestinationSelected() {
        a();
        closeJekBottomSheet();
        if (getView() != null) {
            ((MainView) getView()).hideMyLocation();
        }
    }

    public final void onRideAccepted() {
        closeJekBottomSheet();
        if (getView() != null) {
            a();
            ((MainView) getView()).hideMyLocation();
        }
    }

    public final void onDriverArrived() {
        closeJekBottomSheet();
        if (getView() != null) {
            a();
            ((MainView) getView()).hideMyLocation();
        }
    }

    public final void onPassengerBoarded() {
        closeJekBottomSheet();
        if (getView() != null) {
            a();
            ((MainView) getView()).hideMyLocation();
        }
    }

    public final void onFinished(int i2) {
        b(i2);
        if (getView() != null) {
            b();
            ((MainView) getView()).showMyLocation();
        }
    }

    public final void onInitialize(boolean z) {
        if (getView() != null && ((MainView) getView()).getContext() != null) {
            BaseApplication.get(((MainView) getView()).getContext()).getAppComponent().inject(this);
            this.k = z;
            if (z) {
                ((MainView) getView()).showMapBoxCopyright();
            } else {
                ((MainView) getView()).hideMapBoxCopyright();
            }
            ((MainView) getView()).addDrawerListener(new DrawerLayout.DrawerListener() {
                public final void onDrawerSlide(View view, float f) {
                }

                public final void onDrawerStateChanged(int i) {
                }

                public final void onDrawerOpened(View view) {
                    boolean unused = d.this.q = true;
                    if (d.this.getInteractor() != null) {
                        ((b) d.this.getInteractor()).handleDrawerOpened();
                    }
                }

                public final void onDrawerClosed(View view) {
                    boolean unused = d.this.q = false;
                    if (d.this.getInteractor() != null) {
                        ((b) d.this.getInteractor()).handleDrawerClosed();
                    }
                }
            });
            this.n = new ViewTreeObserver.OnGlobalLayoutListener() {
                public final void onGlobalLayout() {
                    if (d.this.getView() != null) {
                        if (!d.this.v) {
                            d.this.viewIsReady();
                            boolean unused = d.this.v = true;
                        }
                        Rect rect = new Rect();
                        ((MainView) d.this.getView()).getWindowVisibleDisplayFrame(rect);
                        ((MainView) d.this.getView()).getRootView().getHeight();
                        int i = rect.bottom;
                        if (((MainView) d.this.getView()).f878a.getState() == 4) {
                            d.this.scrollJekRecyclerViewToTop();
                        }
                    }
                }
            };
            if (((MainView) getView()).getViewTreeObserver().isAlive()) {
                ((MainView) getView()).getViewTreeObserver().addOnGlobalLayoutListener(this.n);
            }
        }
    }

    public final void onMapStartMoving() {
        if (getView() != null) {
            ((MainView) getView()).makePinSmall();
        }
    }

    public final void onMapStoppedMoving() {
        if (getView() != null) {
            ((MainView) getView()).makePinNormal();
        }
    }

    public final void onHideUpdateBanner() {
        if (getView() != null) {
            ((MainView) getView()).hideUpdateBanner();
        }
    }

    public final void onShowUpdateBannerBeforeRide() {
        if (getView() != null && !this.r) {
            ((MainView) getView()).showUpdateBannerAtTop();
        }
    }

    public final void onShowUpdateBannerInRide() {
        if (getView() != null && !this.r) {
            ((MainView) getView()).showUpdateBannerAtBottom();
        }
    }

    private View c() {
        if (getView() == null) {
            return null;
        }
        return ((MainView) getView()).getLocationSelectorImageButton();
    }

    public final void onOptionalConfigIsReady(OptionalConfig optionalConfig) {
        this.j = optionalConfig;
    }

    public final void onUpdateMapBoxCopyRightStatus(Boolean bool) {
        if (getView() != null) {
            if (!bool.booleanValue()) {
                ((MainView) getView()).hideMapBoxCopyright();
            } else if (this.k) {
                ((MainView) getView()).showMapBoxCopyright();
            }
        }
    }

    public final void onHandleShowCase() {
        if (getView() != null && c() != null && getInteractor() != null && c().getVisibility() == 0 && ((b) getInteractor()).shouldShowShowCase() && !this.r) {
            ShowCaseItemDao showCaseItemDao = new ShowCaseItemDao();
            showCaseItemDao.setActivity((Activity) ((MainView) getView()).getContext());
            showCaseItemDao.setView(c());
            showCaseItemDao.setTitle(((MainView) getView()).getContext().getString(R.string.pick_origin));
            showCaseItemDao.setDescription(((MainView) getView()).getContext().getString(R.string.pin_show_case_desc));
            this.e.showTapTargetForOriginPin(showCaseItemDao);
        }
    }

    public final void onWhatsNewDataReady(List<ChangeLogItem> list) {
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (ChangeLogItem next : list) {
                if (!(next == null || next.getMessage() == null || TextUtils.isEmpty(next.getMessage()))) {
                    arrayList.add(next.getMessage());
                }
            }
            if (!arrayList.isEmpty() && getView() != null) {
                ((MainView) getView()).showWhatsNewDialog(R.mipmap.ic_launcher, ((MainView) getView()).getContext().getString(R.string.new_version_changes), arrayList, R.string.got_it, new View.OnClickListener(list) {
                    private final /* synthetic */ List f$1;

                    {
                        this.f$1 = r2;
                    }

                    public final void onClick(View view) {
                        d.this.a(this.f$1, view);
                    }
                }, new DialogInterface.OnDismissListener(list) {
                    private final /* synthetic */ List f$1;

                    {
                        this.f$1 = r2;
                    }

                    public final void onDismiss(DialogInterface dialogInterface) {
                        d.this.a(this.f$1, dialogInterface);
                    }
                });
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(List list, View view) {
        if (!(list.get(list.size() - 1) == null || getInteractor() == null)) {
            ((b) getInteractor()).handleSeenChangeLog(((ChangeLogItem) list.get(list.size() - 1)).getVersion());
        }
        if (getView() != null) {
            ((MainView) getView()).cancelWhatsNewDialog();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(List list, DialogInterface dialogInterface) {
        if (list.get(list.size() - 1) != null && getInteractor() != null) {
            ((b) getInteractor()).handleSeenChangeLog(((ChangeLogItem) list.get(list.size() - 1)).getVersion());
        }
    }

    public final void onLocationIsUnavailable(k kVar) {
        if (getView() != null && !this.g) {
            this.g = true;
            if (kVar == null) {
                ((MainView) getView()).showNoLocationDialog(this.f917a, this.f918b);
            } else {
                ((MainView) getView()).showNoLocationDialog(new View.OnClickListener(kVar) {
                    private final /* synthetic */ k f$1;

                    {
                        this.f$1 = r2;
                    }

                    public final void onClick(View view) {
                        d.this.a(this.f$1, view);
                    }
                }, this.f918b);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(k kVar, View view) {
        if (getView() != null) {
            ((MainView) getView()).cancelNoLocationDialog();
        }
        if (getInteractor() != null) {
            ((b) getInteractor()).requestEditLocationSetting(kVar);
        }
    }

    public final void onPermissionRequestIsDenied() {
        if (getView() != null && !this.g) {
            this.g = true;
            ((MainView) getView()).showNoPermissionDialog(this.c, this.d);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(BannerItem bannerItem, int i2) {
        if (getInteractor() != null) {
            ((b) getInteractor()).contentSelected(bannerItem, i2);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ServiceItem serviceItem) {
        if (getInteractor() != null) {
            int id = serviceItem.getId();
            if (id != 1) {
                if (id != 2) {
                    if (id != 4) {
                        if (id != 5) {
                            if (id != 6) {
                                if (id != 7) {
                                    if (serviceItem.isActive()) {
                                        ((b) getInteractor()).webHostedItemSelected(serviceItem);
                                    }
                                } else if (serviceItem.isActive()) {
                                    ((b) getInteractor()).webHostedItemSelected(serviceItem);
                                }
                            } else if (serviceItem.isActive()) {
                                ((b) getInteractor()).webHostedItemSelected(serviceItem);
                            }
                        } else if (serviceItem.isActive()) {
                            ((b) getInteractor()).webHostedItemSelected(serviceItem);
                        }
                    } else if (serviceItem.isActive()) {
                        ((b) getInteractor()).chargeItemClicked(serviceItem);
                    }
                } else if (serviceItem.isActive()) {
                    ((b) getInteractor()).webHostedItemSelected(serviceItem);
                }
            } else if (serviceItem.isActive()) {
                ((b) getInteractor()).itemCabClicked();
            }
        }
    }

    public final void reachedTop() {
        if (this.h) {
            closeJekBottomSheet();
        }
    }

    /* access modifiers changed from: protected */
    public final void a(int i2) {
        if (getInteractor() != null) {
            b bVar = (b) getInteractor();
            if (i2 < bVar.k.getServiceTypes().size()) {
                ServiceTypeItem serviceTypeItem = bVar.k.getServiceTypes().get(i2);
                try {
                    c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("Services", serviceTypeItem.getAppmetricaTrackId()).build());
                } catch (Exception e2) {
                    e2.printStackTrace();
                    com.a.a.a.logException(e2);
                }
                if (!serviceTypeItem.isShouldRedirectToPWA() || serviceTypeItem.getUrl() == null) {
                    bVar.c.setDefaultServiceType(serviceTypeItem.getType());
                    bVar.itemCabClicked();
                    if (bVar.getPresenter() != null) {
                        d dVar = (d) bVar.getPresenter();
                        if (dVar.getView() != null) {
                            if (((MainView) dVar.getView()).isFirstItemInJekCompletelyVisible()) {
                                dVar.closeJekBottomSheet();
                            } else {
                                dVar.scrollJekRecyclerViewToTop();
                                dVar.h = true;
                            }
                        }
                    }
                } else if (bVar.getRouter() != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString(cab.snapp.passenger.units.webhost.a.CONTENT_URL_KEY, serviceTypeItem.getUrl());
                    bundle.putBoolean(cab.snapp.passenger.units.webhost.a.IS_TOP_BAR_HIDDEN, serviceTypeItem.isTopBarHidden());
                    ((f) bVar.getRouter()).routeToWebHost(bundle);
                }
            }
        }
    }

    public final void onLocationSelectorClick() {
        if (getInteractor() != null) {
            ((b) getInteractor()).handleLocationSelected();
        }
    }

    public final void onMyLocationClicked() {
        this.f.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "GPS Icon");
        if (getInteractor() != null) {
            this.g = false;
            ((b) getInteractor()).requestMyLocation();
        }
    }

    public final void onUpdateBannerNewFeaturesBtnClicked() {
        if (getView() != null && this.j != null) {
            MainView mainView = (MainView) getView();
            String format = String.format(((MainView) getView()).getContext().getString(R.string.update_to_version), new Object[]{this.j.getVersionName()});
            mainView.showUpdateDialog(R.drawable.ic_time, format == null ? "" : g.changeNumbersBasedOnCurrentLocale(format), this.j.getChanges(), R.string.start_update, new View.OnClickListener() {
                public final void onClick(View view) {
                    d.this.b(view);
                }
            }, R.string.dont_want_now, new View.OnClickListener() {
                public final void onClick(View view) {
                    d.this.a(view);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        if (getView() != null) {
            ((MainView) getView()).cancelUpdateDialog();
        }
        if (getInteractor() != null) {
            ((b) getInteractor()).startUpdate();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        if (getView() != null) {
            ((MainView) getView()).cancelUpdateDialog();
            ((MainView) getView()).hideUpdateBanner();
        }
        if (getInteractor() != null) {
            ((b) getInteractor()).denyUpdate();
        }
    }

    public final void handleInaccurateOriginSelectedLocation() {
        if (getView() != null) {
            ((MainView) getView()).showInaccurateOriginLocationDialog();
            this.o = true;
        }
    }

    public final boolean isEverInaccurateOriginDialogShown() {
        return this.o;
    }

    public final void onNavigatingToRatingUnit() {
        this.e.cancelAll();
    }

    public final boolean isDrawerOpened() {
        return this.q;
    }

    public final boolean isJekBottomSheetOpened() {
        return this.r;
    }

    public final boolean isBottomSheetOpened() {
        if (getView() != null) {
            return ((MainView) getView()).isBottomSheetOpened();
        }
        return false;
    }

    public final void setHasDeeplink(boolean z) {
        this.u = z;
    }

    public final void release() {
        if (this.n != null && getView() != null) {
            ((MainView) getView()).getViewTreeObserver().removeOnGlobalLayoutListener(this.n);
        }
    }

    public final void onNoInternetConnection() {
        if (getView() != null && ((MainView) getView()).getContext() != null) {
            new r(((MainView) getView()).getContext()).showNoInternetDialog();
        }
    }
}
