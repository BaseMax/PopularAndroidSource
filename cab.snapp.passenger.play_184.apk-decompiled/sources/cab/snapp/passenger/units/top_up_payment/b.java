package cab.snapp.passenger.units.top_up_payment;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import androidx.fragment.app.Fragment;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.ScannerActivity;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.CreditRequest;
import cab.snapp.passenger.data_access_layer.network.responses.ApWalletRegistrationResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.CreditResponse;
import cab.snapp.passenger.f.a.a;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import java.lang.ref.SoftReference;
import javax.inject.Inject;

public final class b extends BaseInteractor<e, d> implements a.C0019a {
    public static final int BARCODE_SCANNER_ACTIVITY_RESULT_CODE = 7890;
    public static final String PRIVATE_CHANNEL_FOR_SCANNER = "PRIVATE_CHANNEL_FOR_SCANNER";
    @Inject

    /* renamed from: a  reason: collision with root package name */
    d f1379a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f1380b;
    @Inject
    f c;
    @Inject
    cab.snapp.passenger.c.b d;
    @Inject
    g e;
    private SoftReference<Fragment> f;
    private CreditRequest.PLACE g;
    private long h = 0;
    private long i = 10000;
    private int j = 1001;

    /* access modifiers changed from: private */
    public static /* synthetic */ void b(Throwable th) throws Exception {
    }

    public final void onUnitCreated() {
        super.onUnitCreated();
        BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
        cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId("PRIVATE_CHANNEL_FOR_SCANNER"), new io.reactivex.e.g() {
            public final void accept(Object obj) {
                b.this.b((String) obj);
            }
        });
        ConfigResponse config = this.d.getConfig();
        if (config != null && getPresenter() != null) {
            ((d) getPresenter()).onInitialize(config.getPaymentTexts(), config.isApWalletEnabled(), config.isOnlinePayEnabled(), config.getSnappUssd().isEnabled());
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(String str) throws Exception {
        if (getPresenter() != null) {
            ((d) getPresenter()).a(str);
        }
    }

    public final void onUnitResume() {
        super.onUnitResume();
        if (!(getPresenter() == null || this.c.getCredit() == null)) {
            ((d) getPresenter()).setAppWalletRegistered(this.c.getCredit().getApWalletRegistrationStatus());
            ((d) getPresenter()).setCurrentCredit(this.c.getCredit().getSnappCredit(), this.c.getCredit().getApCredit(), this.j);
        }
        if (this.g == null) {
            this.g = CreditRequest.PLACE.JEK_TOPUP;
        }
        a();
        c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("TopUpModalDefault", "Show").build());
    }

    private void a() {
        addDisposable(this.c.fetchAndRefreshCredit(this.g).doOnSubscribe(new io.reactivex.e.g() {
            public final void accept(Object obj) {
                b.this.b((io.reactivex.b.c) obj);
            }
        }).subscribe(new io.reactivex.e.g(false) {
            private final /* synthetic */ boolean f$1;

            {
                this.f$1 = r2;
            }

            public final void accept(Object obj) {
                b.this.a(this.f$1, (CreditResponse) obj);
            }
        }, new io.reactivex.e.g() {
            public final void accept(Object obj) {
                b.this.c((Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(io.reactivex.b.c cVar) throws Exception {
        if (getPresenter() != null) {
            ((d) getPresenter()).setAppWalletRegistered(3);
            ((d) getPresenter()).setCurrentCredit(-1, null, this.j);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, CreditResponse creditResponse) throws Exception {
        if (getPresenter() != null) {
            ((d) getPresenter()).setCurrentCredit(creditResponse.getSnappCredit(), creditResponse.getApCredit(), this.j);
            ((d) getPresenter()).setAppWalletRegistered(creditResponse.getApWalletRegistrationStatus());
            if (z) {
                if (creditResponse.getDefaultWallet() == 2 && creditResponse.getApWalletRegistrationStatus() == 0) {
                    ((d) getPresenter()).switchToTabBasedOnDefaultWallet(2);
                    return;
                }
                ((d) getPresenter()).switchToTabBasedOnDefaultWallet(creditResponse.getDefaultWallet());
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((d) getPresenter()).setAppWalletRegistered(2);
            ((d) getPresenter()).setCurrentCredit(-1, null, this.j);
        }
    }

    public final void onPaymentStart() {
        if (getPresenter() != null) {
            ((d) getPresenter()).showLoading();
        }
    }

    public final void onPaymentSucceed(long j2) {
        if (getPresenter() != null) {
            ((d) getPresenter()).hideLoading();
            if (this.j == 1003) {
                ((d) getPresenter()).a((String) null);
                addDisposable(this.c.fetchAndRefreshCredit(CreditRequest.PLACE.JEK_TOPUP).doOnSubscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        b.this.a((io.reactivex.b.c) obj);
                    }
                }).subscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        b.this.a((CreditResponse) obj);
                    }
                }, $$Lambda$b$q5s4bxI0cb7foLnPWdBDE22d7Yo.INSTANCE));
                this.e.updatePaymentStatus();
                return;
            }
            ((BottomSheetDialogFragment) this.f.get()).dismiss();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(io.reactivex.b.c cVar) throws Exception {
        if (getPresenter() != null) {
            ((d) getPresenter()).setCurrentCredit(-1, null, this.j);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(CreditResponse creditResponse) throws Exception {
        if (getPresenter() != null && creditResponse != null) {
            ((d) getPresenter()).setCurrentCredit(creditResponse.getSnappCredit(), creditResponse.getApCredit(), this.j);
        }
    }

    public final void onPaymentError(String str, int i2) {
        if (getPresenter() != null) {
            if (i2 == 1101) {
                ((d) getPresenter()).showNoInternet();
            } else {
                ((d) getPresenter()).onPaymentError(str, this.j == 1003);
            }
        }
    }

    public final void increaseChargeByFixedAmount() {
        if (!(getPresenter() == null || ((d) getPresenter()).b() == null || ((d) getPresenter()).b().longValue() == -1)) {
            this.h = ((d) getPresenter()).b().longValue();
        }
        this.h += this.i;
        b();
        c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("TabShetabCards", "Plus").addOuterKeyToCurrentAsValue(a((d) getPresenter())).build());
    }

    public final void decreaseChargeByFixedAmount() {
        if (!(getPresenter() == null || ((d) getPresenter()).b() == null || ((d) getPresenter()).b().longValue() == -1)) {
            this.h = ((d) getPresenter()).b().longValue();
        }
        long j2 = this.h;
        long j3 = this.i;
        if (j2 >= j3) {
            this.h = j2 - j3;
        } else {
            this.h = 0;
        }
        b();
        c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("TabShetabCards", "Minus").addOuterKeyToCurrentAsValue("TopUpModalDefault").build());
    }

    private void b() {
        if (getPresenter() != null) {
            ((d) getPresenter()).updateUiAccordingToConsideringChargeAmount(this.h);
        }
    }

    public final void chargeAmountSelected(int i2) {
        this.h = (long) i2;
        b();
        c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("TabShetabCards", i2 != 100000 ? i2 != 200000 ? i2 != 500000 ? "" : "Add50KT" : "Add20KT" : "Add10KT").addOuterKeyToCurrentAsValue(a((d) getPresenter())).build());
    }

    public final void chargeUserForConsideringAmount() {
        String str;
        String str2;
        Number number;
        if (!(getActivity() == null || getPresenter() == null)) {
            cab.snapp.passenger.f.a.b buildSnappPayment = a.buildSnappPayment(getActivity(), this.j, this, this.f1379a, this.f1380b);
            if (buildSnappPayment != null) {
                int i2 = this.j;
                if (i2 == 1001 || i2 == 1002 || i2 == 1004) {
                    Integer.valueOf(0);
                    if (getPresenter() == null || ((d) getPresenter()).b().doubleValue() == -1.0d) {
                        number = Long.valueOf(this.h);
                    } else {
                        number = ((d) getPresenter()).b();
                    }
                    if (number.doubleValue() < 10000.0d) {
                        ((d) getPresenter()).a((int) R.string.payment_amount_error);
                    } else {
                        buildSnappPayment.performPayCall(number.toString());
                    }
                } else if (((d) getPresenter()).c() == null || ((d) getPresenter()).c().length() == 0) {
                    ((d) getPresenter()).a((int) R.string.invalid_snapp_code);
                } else {
                    buildSnappPayment.performPayCall(((d) getPresenter()).c());
                }
                String a2 = a((d) getPresenter());
                if (this.j == 1003) {
                    str2 = "Submit";
                    str = "TabSnappCard";
                } else {
                    str2 = "Purchase";
                    str = "TabShetabCards";
                }
                c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue(str, str2).addOuterKeyToCurrentAsValue(a2).build());
            }
        }
    }

    public final void apWalletActivationRequested() {
        addDisposable(this.f1379a.sendApWalletRegistration(this.c.getProfile().getCellphone()).subscribe(new io.reactivex.e.g() {
            public final void accept(Object obj) {
                b.this.a((ApWalletRegistrationResponse) obj);
            }
        }, new io.reactivex.e.g() {
            public final void accept(Object obj) {
                b.this.a((Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ApWalletRegistrationResponse apWalletRegistrationResponse) throws Exception {
        a(apWalletRegistrationResponse.getRedirectUrl());
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getPresenter() != null) {
            if (th.getMessage() != null) {
                d dVar = (d) getPresenter();
                String message = th.getMessage();
                if (dVar.getView() != null) {
                    ((TopUpPaymentView) dVar.getView()).showToast(message);
                }
                return;
            }
            ((d) getPresenter()).a((int) R.string.ap_register_error);
        }
    }

    public final void setActiveMethod(int i2) {
        this.j = i2;
    }

    public final void startScan() {
        if (getActivity() != null) {
            getActivity().startActivityForResult(new Intent(getActivity(), ScannerActivity.class), BARCODE_SCANNER_ACTIVITY_RESULT_CODE);
        }
    }

    public final void reportTabSnappCardInput() {
        c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("TabSnappCard", "Input").addOuterKeyToCurrentAsValue(a((d) getPresenter())).build());
    }

    public final void reportTabUSSSDToAppMetrica() {
        c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue(a((d) getPresenter()), "TabUSSD").build());
    }

    public final void reportTabShetabCardsExtendToAppMetrica(boolean z) {
        if (z && this.j == 1001) {
            c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("TabShetabCards", "Extend").addOuterKeyToCurrentAsValue(a((d) getPresenter())).build());
        }
    }

    public final void reportTopUpModalShowCloseToAppMetrica(boolean z) {
        String a2 = a((d) getPresenter());
        c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue(a2, z ? "Show" : "Close").addOuterKeyToCurrentAsValue(a2).build());
    }

    public final void resetChargeAmount() {
        this.h = 0;
    }

    public final void chargeAmountEnteredByUser(String str) {
        if (str == null || str.isEmpty()) {
            this.h = 0;
            return;
        }
        String convertPersianToEnglishNumbers = cab.snapp.c.d.convertPersianToEnglishNumbers((CharSequence) str);
        StringBuilder sb = new StringBuilder(convertPersianToEnglishNumbers.length());
        for (int i2 = 0; i2 < convertPersianToEnglishNumbers.length(); i2++) {
            char charAt = convertPersianToEnglishNumbers.charAt(i2);
            if (Character.isDigit(charAt)) {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        if (!sb2.isEmpty()) {
            this.h = Long.parseLong(sb2);
        }
    }

    public final Activity getActivity() {
        if (this.f.get() != null) {
            return this.f.get().getActivity();
        }
        return null;
    }

    public final void setController(Fragment fragment) {
        this.f = new SoftReference<>(fragment);
    }

    public final void setPlace(CreditRequest.PLACE place) {
        this.g = place;
    }

    public final void onApWalletDescriptionMoreInfoClicked(String str) {
        a(str);
    }

    private void a(String str) {
        if (getActivity() != null) {
            PackageManager packageManager = getActivity().getPackageManager();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            if (intent.resolveActivity(packageManager) != null) {
                getActivity().startActivity(intent);
                return;
            }
            if (getPresenter() != null) {
                ((d) getPresenter()).a((int) R.string.error_no_browser_available);
            }
        }
    }

    public final void onApWalletRetryRequested() {
        a();
    }

    private static String a(d dVar) {
        return (dVar == null || !dVar.f1383a) ? "TopUpModalDefault" : "TopUpModalExtended";
    }
}
