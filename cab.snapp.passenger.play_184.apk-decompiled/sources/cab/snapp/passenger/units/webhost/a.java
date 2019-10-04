package cab.snapp.passenger.units.webhost;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebView;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.d;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.snapp_group.ServiceItem;
import cab.snapp.passenger.data.models.snapp_group.ServiceMeta;
import cab.snapp.passenger.f.b.b.c;
import com.koushikdutta.ion.bitmap.IonBitmapCache;
import java.util.UUID;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    public static final String CONTENT_URL_KEY = "CONTENT_URL_KEY";
    public static final String IS_FROM_INBOX = "IS_FROM_INBOX";
    public static final String IS_TOP_BAR_HIDDEN = "IS_TOP_BAR_HIDDEN";
    public static final String SERVICE_ITEM_KEY = "SERVICE_ITEM_KEY";
    private static final String e = UUID.randomUUID().toString();
    @Inject

    /* renamed from: a  reason: collision with root package name */
    c f1412a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    g f1413b;
    @Inject
    d c;
    @Inject
    e d;
    private ServiceItem f;
    private String g;
    private long h = 0;
    private boolean i;

    public static String getUnitFinishedPrivateChannelId() {
        return cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(e);
    }

    public boolean handleOnUrlClick(WebView webView, String str) {
        if (!(str == null || getActivity() == null)) {
            if (this.c.getWebhostBackUrl() != null && str.startsWith(this.c.getWebhostBackUrl())) {
                if (getRouter() != null) {
                    ((d) getRouter()).navigateUp();
                }
                return true;
            } else if (str.startsWith("https://webview.snapptrip.com") && str.endsWith("/print/pdf")) {
                if (getActivity() != null) {
                    getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                }
                return true;
            } else if (str.startsWith("tel:")) {
                Intent intent = new Intent("android.intent.action.DIAL");
                intent.setData(Uri.parse(str));
                if (getActivity() != null) {
                    getActivity().startActivity(intent);
                }
                return true;
            } else {
                if (str.startsWith("snapp://")) {
                    g gVar = this.f1413b;
                    if (gVar != null && gVar.getCurrentState() == 0) {
                        if (getActivity() != null && (getActivity() instanceof RootActivity)) {
                            ((RootActivity) getActivity()).setShouldHandleBack(true);
                            getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                        }
                        return true;
                    }
                }
                webView.loadUrl(str);
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public final void a() {
        if (getPresenter() != null) {
            ((c) getPresenter()).closeKeyboardIfNeeded();
        }
        ((RootActivity) getActivity()).setShouldHandleBack(true);
        if (getRouter() != null) {
            ((d) getRouter()).navigateUp();
        }
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(getUnitFinishedPrivateChannelId(), Boolean.TRUE);
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getPresenter() != null) {
                boolean z = false;
                if (getActivity() != null && (getActivity() instanceof RootActivity)) {
                    ((RootActivity) getActivity()).setShouldHandleBack(false);
                }
                if (!(getController() == null || getRouter() == null)) {
                    ((d) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
                }
                ((c) getPresenter()).onInitialize();
                Bundle arguments = getArguments();
                if (arguments.containsKey(SERVICE_ITEM_KEY) && arguments.get(SERVICE_ITEM_KEY) != null && (arguments.getParcelable(SERVICE_ITEM_KEY) instanceof ServiceItem)) {
                    this.f = (ServiceItem) arguments.getParcelable(SERVICE_ITEM_KEY);
                    ServiceItem serviceItem = this.f;
                    if (serviceItem != null) {
                        this.g = serviceItem.getReferralLink();
                        ((c) getPresenter()).onSetupTheme(this.f.getId(), getActivity());
                        ((c) getPresenter()).onWebHostIsInitializedFromService(this.f.getName());
                        cab.snapp.passenger.f.g.changeAppLocaleFromSharedPrefIfNeeded(getActivity(), false);
                        z = this.f.isTopBarHidden();
                    }
                } else if (arguments.containsKey(CONTENT_URL_KEY) && arguments.getString(CONTENT_URL_KEY) != null) {
                    this.g = arguments.getString(CONTENT_URL_KEY);
                    boolean z2 = arguments.getBoolean(IS_TOP_BAR_HIDDEN, false);
                    ((c) getPresenter()).onSetupTheme(0, getActivity());
                    cab.snapp.passenger.f.g.changeAppLocaleFromSharedPrefIfNeeded(getActivity(), false);
                    if (!arguments.containsKey(IS_FROM_INBOX) || !arguments.getBoolean(IS_FROM_INBOX)) {
                        this.i = false;
                        ((c) getPresenter()).onNoTitleWebHost();
                    } else {
                        this.i = arguments.getBoolean(IS_FROM_INBOX);
                        ((c) getPresenter()).onWebHostIsInitializedFromInbox();
                    }
                    z = z2;
                }
                ServiceItem serviceItem2 = this.f;
                if (serviceItem2 != null) {
                    ServiceMeta meta = serviceItem2.getMeta();
                    if (meta != null) {
                        if (meta.isLocation()) {
                            if (this.d.getLocation() != null) {
                                this.g += "&location=" + r2.getLatitude() + "," + r2.getLongitude() + "," + r2.getAccuracy();
                            }
                        }
                        if (meta.isAppVersion()) {
                            this.g += "&app_version=4.7.0";
                        }
                    }
                }
                new StringBuilder("WebHostUrl:").append(this.g);
                ((c) getPresenter()).onUrlReady(this.g);
                ((c) getPresenter()).onIsTopBarHiddenReady(Boolean.valueOf(z));
                this.f1412a.reportScreenName("");
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.h = System.currentTimeMillis();
    }

    public void onUnitPause() {
        super.onUnitPause();
        ServiceItem serviceItem = this.f;
        if (serviceItem != null && serviceItem.getId() == 2) {
            long currentTimeMillis = System.currentTimeMillis();
            long j = this.h;
            if (currentTimeMillis - j <= 5000) {
                this.f1412a.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.HOMESCREEN_SNAPP_FLIGHT, "[back][lessThan5second]");
            } else if (currentTimeMillis - j <= IonBitmapCache.DEFAULT_ERROR_CACHE_DURATION) {
                this.f1412a.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.HOMESCREEN_SNAPP_FLIGHT, "[back][lessThan30second]");
            } else {
                this.f1412a.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.HOMESCREEN_SNAPP_FLIGHT, "[back][moreThan30second]");
            }
        }
    }

    public void onApplicationRootBackPressed() {
        if (getPresenter() != null) {
            if (!((c) getPresenter()).onCheckAndBackWebview() && getActivity() != null && (getActivity() instanceof RootActivity)) {
                a();
            }
        } else if (getActivity() != null && (getActivity() instanceof RootActivity)) {
            a();
        }
    }
}
