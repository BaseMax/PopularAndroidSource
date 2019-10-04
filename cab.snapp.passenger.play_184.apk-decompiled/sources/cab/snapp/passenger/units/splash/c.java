package cab.snapp.passenger.units.splash;

import android.app.Activity;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.b.d;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappuikit.c.a;
import java.util.List;

final class c extends BasePresenter<SplashView, a> {

    /* renamed from: a  reason: collision with root package name */
    b f1318a;

    /* renamed from: b  reason: collision with root package name */
    b f1319b;
    b c;
    View.OnClickListener d;
    View.OnClickListener e;
    View.OnClickListener f;

    c() {
    }

    public final void onNoInternetConnection() {
        if (getView() != null && ((SplashView) getView()).getContext() != null) {
            new r(((SplashView) getView()).getContext()).showNoInternetDialog(new DialogInterface.OnDismissListener() {
                public final void onDismiss(DialogInterface dialogInterface) {
                    if (c.this.getView() != null) {
                        ((SplashView) c.this.getView()).showTryAgainButton();
                    }
                }
            });
        }
    }

    public final void onShowingWelcomeView() {
        if (((SplashView) getView()) == null) {
        }
    }

    public final void slideUpAnimationEnded() {
        a aVar = (a) getInteractor();
        if (aVar != null) {
            aVar.a();
        }
    }

    public final void onTryAgainButtonClicked() {
        a aVar = (a) getInteractor();
        if (aVar != null) {
            aVar.a();
        }
        SplashView splashView = (SplashView) getView();
        if (splashView != null) {
            splashView.hideTryAgainButton();
            splashView.startLoadingAnimation();
        }
    }

    public final void onGetConfigFailed() {
        SplashView splashView = (SplashView) getView();
        if (splashView != null) {
            splashView.showTryAgainButton();
            splashView.stopLoadingAnimation();
        }
    }

    public final void onGetConfigSucceed() {
        if (getView() != null) {
            ((SplashView) getView()).stopLoadingAnimation();
        }
    }

    public final void onShowEndPointSelectionDialog(List<String> list) {
        if (list != null && !list.isEmpty()) {
            String[] strArr = new String[1];
            if (getView() != null) {
                ((SplashView) getView()).showEndPointSelectionDialog("Select Base Endpoint", R.string.ic_font_select_lang, list, new d(strArr, list) {
                    private final /* synthetic */ String[] f$0;
                    private final /* synthetic */ List f$1;

                    {
                        this.f$0 = r1;
                        this.f$1 = r2;
                    }

                    public final void onSingleItemSelected(int i, String str) {
                        c.a(this.f$0, this.f$1, i, str);
                    }
                }, "select this", new View.OnClickListener(strArr) {
                    private final /* synthetic */ String[] f$1;

                    {
                        this.f$1 = r2;
                    }

                    public final void onClick(View view) {
                        c.this.b(this.f$1, view);
                    }
                });
            }
        }
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(String[] strArr, List list, int i, String str) {
        strArr[0] = (String) list.get(i);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(String[] strArr, View view) {
        if (getInteractor() != null) {
            ((a) getInteractor()).changeServerEndPoint(strArr[0]);
        }
        if (getView() != null) {
            ((SplashView) getView()).cancelEndPointSelectionDialog();
        }
    }

    public final void releaseResources() {
        b bVar = this.f1318a;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.f1318a.dismiss();
            }
            this.f1318a.cancel();
            this.f1318a = null;
        }
        b bVar2 = this.f1319b;
        if (bVar2 != null) {
            if (bVar2.isShowing()) {
                this.f1319b.dismiss();
            }
            this.f1319b.cancel();
            this.f1319b = null;
        }
        b bVar3 = this.c;
        if (bVar3 != null) {
            if (bVar3.isShowing()) {
                this.c.dismiss();
            }
            this.c.cancel();
            this.c = null;
        }
        if (this.d != null) {
            this.d = null;
        }
        if (this.e != null) {
            this.e = null;
        }
        if (this.f != null) {
            this.f = null;
        }
    }

    public final void showUpdateDialog() {
        SplashView splashView = (SplashView) getView();
        if (splashView != null && splashView.getContext() != null && (!(splashView.getContext() instanceof Activity) || !((Activity) splashView.getContext()).isFinishing())) {
            b bVar = this.f1319b;
            if (bVar == null) {
                this.f1319b = new b.a(splashView.getContext()).setTheme(1).setDialogTitle((int) R.string.new_version).setDialogViewType(new g.a().setMessage(splashView.getContext().getString(R.string.new_version_available)).build()).setCancelable(false).setPositiveButton((int) R.string.yes, this.d).setNegativeButton((int) R.string.no, this.e).showOnBuild(true).build();
            } else {
                bVar.show();
            }
        }
    }

    public final void showForceUpdateDialog() {
        SplashView splashView = (SplashView) getView();
        if (splashView != null && splashView.getContext() != null && (!(splashView.getContext() instanceof Activity) || !((Activity) splashView.getContext()).isFinishing())) {
            b bVar = this.c;
            if (bVar == null) {
                this.c = new b.a(splashView.getContext()).setTheme(0).setDialogTitle((int) R.string.new_version).setDialogViewType(new g.a().setMessage(splashView.getContext().getString(R.string.new_version_available_no_support_anymore)).build()).setCancelable(false).setPositiveButton((int) R.string.download_new_version, this.f).showOnBuild(true).build();
            } else {
                bVar.show();
            }
        }
    }

    public final void onReadyForFirstTime() {
        if (getView() != null) {
            ((SplashView) getView()).showBottomSkyLine();
            ((SplashView) getView()).slideUpScreenElements();
        }
        this.d = new View.OnClickListener() {
            public final void onClick(View view) {
                c.this.c(view);
            }
        };
        this.e = new View.OnClickListener() {
            public final void onClick(View view) {
                c.this.b(view);
            }
        };
        this.f = new View.OnClickListener() {
            public final void onClick(View view) {
                c.this.a(view);
            }
        };
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        if (getInteractor() != null) {
            ((a) getInteractor()).b();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        b bVar = this.f1319b;
        if (bVar != null && bVar.isShowing()) {
            this.f1319b.dismiss();
        }
        if (getInteractor() != null) {
            ((a) getInteractor()).c();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        b bVar = this.c;
        if (bVar != null && bVar.isShowing()) {
            this.c.dismiss();
        }
        if (getInteractor() != null) {
            ((a) getInteractor()).b();
        }
    }

    public final void onWelcomeChildIsAdded(boolean z) {
        if (getView() != null) {
            ((SplashView) getView()).translateUpSnappLogo();
        }
    }

    public final void onVersionNameIsReady(String str, String str2) {
        if (getView() != null && ((SplashView) getView()).getContext() != null) {
            ((SplashView) getView()).showVersionName();
            String string = ((SplashView) getView()).getContext().getString(R.string.version);
            if (str != null) {
                string = string + str;
            }
            if (str2 != null) {
                string = string + "\n" + str2;
            }
            ((SplashView) getView()).setVersionName(string);
        }
    }

    public final void closeAppClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).closeApp();
        }
    }

    public final void showGplaySericeNotInstalled() {
        if (getView() != null) {
            ((SplashView) getView()).showGplayServiceUpdateDialog();
        }
    }

    public final void downloadGplayClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).downloadGplayService();
        }
    }

    public final void onVersionClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).handleChangeServerEndPointClick();
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((SplashView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((SplashView) getView()).getContext(), R.color.colorAccent);
        }
    }

    public final void showInputDialogForQAEndpoints(String str) {
        if (getView() != null) {
            final String[] strArr = {str};
            SplashView splashView = (SplashView) getView();
            if (str == null) {
                str = "";
            }
            splashView.showQAEndpointDialog("Change The Endpoint Key or Continue with Current Key", "", str, new TextWatcher() {
                public final void afterTextChanged(Editable editable) {
                }

                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    strArr[0] = charSequence.toString();
                }
            }, "Continue", new View.OnClickListener(strArr) {
                private final /* synthetic */ String[] f$1;

                {
                    this.f$1 = r2;
                }

                public final void onClick(View view) {
                    c.this.a(this.f$1, view);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(String[] strArr, View view) {
        if (strArr != null && strArr.length > 0 && strArr[0] != null && !strArr[0].equals("")) {
            if (getInteractor() != null) {
                ((a) getInteractor()).changeDynamicEndpoint(strArr[0]);
            }
            if (getView() != null) {
                ((SplashView) getView()).closeQAEndpointsDialog();
            }
        }
    }
}
