package cab.snapp.passenger.units.setting;

import android.content.Context;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.responses.SettingsResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.f.j;
import cab.snapp.passenger.play.R;
import cab.snapp.snappnetwork.model.f;
import cab.snapp.snappuikit.SnappCheckBox;
import io.fabric.sdk.android.services.settings.t;
import java.util.HashMap;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    b f1228a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    cab.snapp.b.a f1229b;
    @Inject
    d c;
    @Inject
    c d;
    int e;
    private boolean f;

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            cab.snapp.b.a aVar = this.f1229b;
            if (aVar != null) {
                boolean z = false;
                if (aVar.get("passenger_newsletter_emails") == null || !this.f1229b.get("passenger_newsletter_emails").equals("1")) {
                    f(false);
                } else {
                    f(true);
                }
                if (this.f1229b.get("passenger_ride_emails") == null || !this.f1229b.get("passenger_ride_emails").equals("1")) {
                    e(false);
                } else {
                    e(true);
                }
                if (this.f1229b.get("passenger_ride_sms") == null || !this.f1229b.get("passenger_ride_sms").equals("1")) {
                    d(false);
                } else {
                    d(true);
                }
                if (this.f1229b.get("passenger_transaction_sms") == null || !this.f1229b.get("passenger_transaction_sms").equals("1")) {
                    b(false);
                } else {
                    b(true);
                }
                if (this.f1229b.get("privacy_setting") == null || !this.f1229b.get("privacy_setting").equals("1")) {
                    c(false);
                } else {
                    c(true);
                }
                if (this.f1229b.get("passenger_traffic_map") == null) {
                    a(true);
                } else if (this.f1229b.get("passenger_traffic_map") == null || !this.f1229b.get("passenger_traffic_map").equals("1")) {
                    a(false);
                } else {
                    a(true);
                }
                int savedLocale = g.getSavedLocale();
                if (!(getPresenter() == null || getController() == null)) {
                    if (savedLocale == 10) {
                        ((c) getPresenter()).setLanguageSummary(getController().getString(R.string.persian));
                    } else if (savedLocale == 20) {
                        ((c) getPresenter()).setLanguageSummary(getController().getString(R.string.english));
                    } else if (savedLocale == 30) {
                        ((c) getPresenter()).setLanguageSummary(getController().getString(R.string.french));
                    } else if (savedLocale == 40) {
                        ((c) getPresenter()).setLanguageSummary(getController().getString(R.string.turkish));
                    } else if (savedLocale == 50) {
                        ((c) getPresenter()).setLanguageSummary(getController().getString(R.string.arabic));
                    }
                }
                if (this.f1228a.getMapType() == 1) {
                    z = true;
                }
                if (getPresenter() != null) {
                    ((c) getPresenter()).showTrafficSection(z);
                }
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).startToFetchData();
            }
            addDisposable(this.c.getSettings().subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((SettingsResponse) obj);
                }
            }, new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((Throwable) obj);
                }
            }));
            if (getPresenter() != null) {
                ((c) getPresenter()).setStatusBarColor();
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.d.reportScreenName("Setting Page");
    }

    /* access modifiers changed from: private */
    public void a(SettingsResponse settingsResponse) {
        if (getPresenter() != null && settingsResponse != null) {
            ((c) getPresenter()).finishedFetchData();
            boolean z = false;
            ((c) getPresenter()).activateNewsLetterEmail(settingsResponse.getNewsletter() == 1);
            ((c) getPresenter()).activateRideInfoEmail(settingsResponse.getRideEmails() == 1);
            ((c) getPresenter()).activateRideInfoSMS(settingsResponse.getRideSMS() == 1);
            ((c) getPresenter()).activateTransactionSMS(settingsResponse.getTransactionSMS() == 1);
            c cVar = (c) getPresenter();
            if (settingsResponse.getPrivacySetting() == 1) {
                z = true;
            }
            cVar.activateStatisticalInfo(z);
            if (!this.f1228a.getConfig().isApWalletEnabled()) {
                this.e = 1;
                ((c) getPresenter()).removeApWalletFromDefaultWalletList();
            } else {
                this.e = settingsResponse.getDefaultWallet();
            }
            ((c) getPresenter()).setDefaultWallet(this.e);
        }
    }

    /* access modifiers changed from: private */
    public void a(Throwable th) {
        if (th != null) {
            if (getPresenter() != null) {
                ((c) getPresenter()).finishedFetchData();
            }
            if (getActivity() != null) {
                cab.snapp.snappuikit.b.makeText((Context) getActivity(), getActivity().getString(R.string.error)).textColor(getActivity().getResources().getColor(R.color.cherry)).show();
            }
        }
    }

    private void a(boolean z) {
        if (getPresenter() != null) {
            ((c) getPresenter()).activeTrafficMap(z);
            if (z) {
                j.showTraffic(j.getMapViewId());
            } else {
                j.hideTraffic(j.getMapViewId());
            }
        }
    }

    private void b(boolean z) {
        if (getPresenter() != null) {
            ((c) getPresenter()).activateTransactionSMS(z);
        }
    }

    private void c(boolean z) {
        if (getPresenter() != null) {
            ((c) getPresenter()).activateStatisticalInfo(z);
        }
    }

    private void d(boolean z) {
        if (getPresenter() != null) {
            ((c) getPresenter()).activateRideInfoSMS(z);
        }
    }

    private void e(boolean z) {
        if (getPresenter() != null) {
            ((c) getPresenter()).activateRideInfoEmail(z);
        }
    }

    private void f(boolean z) {
        if (getPresenter() != null) {
            ((c) getPresenter()).activateNewsLetterEmail(z);
        }
    }

    public void newsLetterCheckBoxToggled(SnappCheckBox snappCheckBox) {
        if (getPresenter() != null) {
            String str = snappCheckBox.isChecked() ? "1" : "0";
            ((c) getPresenter()).setNewsLetterSummaryState(snappCheckBox.isChecked());
            a(snappCheckBox, "passenger_newsletter_emails", str);
        }
    }

    public void rideInfoEmailCheckBoxToggled(SnappCheckBox snappCheckBox) {
        if (getPresenter() != null) {
            String str = snappCheckBox.isChecked() ? "1" : "0";
            ((c) getPresenter()).setRideInfoEmailSummaryState(snappCheckBox.isChecked());
            a(snappCheckBox, "passenger_ride_emails", str);
        }
    }

    public void rideInfoSMSCheckBoxToggled(SnappCheckBox snappCheckBox) {
        if (getPresenter() != null) {
            String str = snappCheckBox.isChecked() ? "1" : "0";
            ((c) getPresenter()).setRideInfoSMSSummaryState(snappCheckBox.isChecked());
            a(snappCheckBox, "passenger_ride_sms", str);
        }
    }

    public void rideTransactionCheckBoxToggled(SnappCheckBox snappCheckBox) {
        if (getPresenter() != null) {
            String str = snappCheckBox.isChecked() ? "1" : "0";
            ((c) getPresenter()).setTransactionSummaryState(snappCheckBox.isChecked());
            a(snappCheckBox, "passenger_transaction_sms", str);
        }
    }

    public void statisticInfoCheckBoxToggled(SnappCheckBox snappCheckBox) {
        if (getPresenter() != null) {
            a(snappCheckBox, "privacy_setting", snappCheckBox.isChecked() ? "1" : "0");
            c.getInstance().sendNestedEventViaAppmetrica("Menu", new b.a().addKeyValue(t.ANALYTICS_KEY, snappCheckBox.isChecked() ? "on" : "off").addOuterKeyToCurrentAsValue("Setting").build());
        }
    }

    public void trafficMapCheckBoxToggled(SnappCheckBox snappCheckBox) {
        if (getPresenter() != null) {
            String str = snappCheckBox.isChecked() ? "1" : "0";
            ((c) getPresenter()).setTrafficMapSummaryState(snappCheckBox.isChecked());
            a("passenger_traffic_map", str);
            j.updateTrafficState(j.getMapViewId());
        }
    }

    public void languageSelectTextViewClicked() {
        if (getPresenter() != null) {
            ((c) getPresenter()).showSelectLanguageDialog();
        }
    }

    public void defaultWalletSelectTextViewClicked() {
        if (getPresenter() != null) {
            ((c) getPresenter()).showSelectDefaultWalletDialog();
        }
    }

    public void languageSelectedAtIndex(int i) {
        if (!(getPresenter() == null || getActivity() == null)) {
            if (i == 0) {
                ((c) getPresenter()).setLanguageSummary(getActivity().getString(R.string.persian));
                changeLocale(10);
            } else if (i == 1) {
                ((c) getPresenter()).setLanguageSummary(getActivity().getString(R.string.english));
                changeLocale(20);
            } else if (i == 2) {
                ((c) getPresenter()).setLanguageSummary(getActivity().getString(R.string.french));
                changeLocale(30);
            } else if (i == 3) {
                ((c) getPresenter()).setLanguageSummary(getActivity().getString(R.string.turkish));
                changeLocale(40);
            } else if (i == 4) {
                ((c) getPresenter()).setLanguageSummary(getActivity().getString(R.string.arabic));
                changeLocale(50);
            }
        }
    }

    public void defaultWalletSelectedAtIndex(int i) {
        if (getPresenter() != null && getActivity() != null && this.e != i) {
            a((SnappCheckBox) null, "default_wallet", String.valueOf(i));
        }
    }

    public void changeLocale(int i) {
        if (g.changeAppLocale(getActivity(), i)) {
            int savedLocale = g.getSavedLocale();
            String str = savedLocale != 10 ? savedLocale != 20 ? savedLocale != 30 ? savedLocale != 40 ? savedLocale != 50 ? "" : "Arabic" : "Turki" : "French" : "English" : "Persian";
            HashMap hashMap = new HashMap();
            hashMap.put("language", str);
            this.d.reportEvent(c.e.APP_LANGUAGE, hashMap);
        }
    }

    private void a(SnappCheckBox snappCheckBox, String str, String str2) {
        addDisposable(this.c.changeSetting(str, str2).subscribe(new io.reactivex.e.g(str, str2) {
            private final /* synthetic */ String f$1;
            private final /* synthetic */ String f$2;

            {
                this.f$1 = r2;
                this.f$2 = r3;
            }

            public final void accept(Object obj) {
                a.this.a(this.f$1, this.f$2, (f) obj);
            }
        }, new io.reactivex.e.g(snappCheckBox, str, str2) {
            private final /* synthetic */ SnappCheckBox f$1;
            private final /* synthetic */ String f$2;
            private final /* synthetic */ String f$3;

            {
                this.f$1 = r2;
                this.f$2 = r3;
                this.f$3 = r4;
            }

            public final void accept(Object obj) {
                a.this.a(this.f$1, this.f$2, this.f$3, (Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, f fVar) throws Exception {
        a(str, str2);
        if (str.equals("default_wallet")) {
            this.e = Integer.parseInt(str2);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(SnappCheckBox snappCheckBox, String str, String str2, Throwable th) throws Exception {
        this.f = true;
        if (getPresenter() != null && getActivity() != null) {
            if (str.equals("default_wallet") && getPresenter() != null) {
                ((c) getPresenter()).setDefaultWallet(this.e);
            }
            cab.snapp.snappuikit.b.makeText((Context) getActivity(), getActivity().getString(R.string.error_on_change_setting)).textColor(getActivity().getResources().getColor(R.color.cherry)).show();
        }
    }

    private void a(String str, String str2) {
        this.f1229b.put(str, str2);
    }

    public void goBack() {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }
}
