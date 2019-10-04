package cab.snapp.passenger.units.webhost;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Build;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;

public final class c extends BasePresenter<WebHostView, a> {
    public final void onBackButtonClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).onApplicationRootBackPressed();
        }
    }

    public final void onHomeButtonClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).a();
        }
    }

    public final void onInitialize() {
        if (getView() != null) {
            ((WebHostView) getView()).webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
            ((WebHostView) getView()).webView.getSettings().setJavaScriptEnabled(true);
            ((WebHostView) getView()).webView.getSettings().setPluginState(WebSettings.PluginState.ON);
            ((WebHostView) getView()).webView.getSettings().setAppCacheEnabled(true);
            ((WebHostView) getView()).webView.getSettings().setDatabaseEnabled(true);
            ((WebHostView) getView()).webView.getSettings().setDomStorageEnabled(true);
            ((WebHostView) getView()).webView.setWebChromeClient(new WebChromeClient() {
                public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
                    callback.invoke(str, true, false);
                }
            });
            ((WebHostView) getView()).webView.setWebViewClient(new WebViewClient() {
                public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                    ((WebHostView) c.this.getView()).progressBar.setVisibility(0);
                }

                public final void onPageFinished(WebView webView, String str) {
                    ((WebHostView) c.this.getView()).progressBar.setVisibility(8);
                }

                public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    if (c.this.getInteractor() == null || str == null || webView == null) {
                        return false;
                    }
                    return ((a) c.this.getInteractor()).handleOnUrlClick(webView, str);
                }
            });
        }
    }

    public final void onUrlReady(String str) {
        if (getView() != null) {
            ((WebHostView) getView()).webView.loadUrl(str);
        }
    }

    public final void onIsTopBarHiddenReady(Boolean bool) {
        if (getView() != null) {
            ((WebHostView) getView()).changeTopBarVisibility(bool);
        }
    }

    public final void onSetupTheme(int i, Activity activity) {
        int i2;
        if (getView() != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                i2 = ((WebHostView) getView()).getContext().getColor(R.color.white);
            } else {
                i2 = ((WebHostView) getView()).getContext().getResources().getColor(R.color.white);
            }
            if (activity != null) {
                a.setStatusBarColor(activity, i2);
            }
        }
    }

    public final boolean onCheckAndBackWebview() {
        if (getView() == null) {
            return false;
        }
        a();
        if (!((WebHostView) getView()).webView.canGoBack()) {
            return false;
        }
        ((WebHostView) getView()).webView.goBack();
        return true;
    }

    public final void onWebHostIsInitializedFromInbox() {
        if (getView() != null) {
            ((WebHostView) getView()).homeImageButton.setVisibility(8);
            ((WebHostView) getView()).setTitle(((WebHostView) getView()).getContext().getString(R.string.messages));
        }
    }

    public final void onWebHostIsInitializedFromService(String str) {
        if (getView() != null) {
            ((WebHostView) getView()).homeImageButton.setVisibility(0);
            ((WebHostView) getView()).setTitle(str);
        }
    }

    public final void onNoTitleWebHost() {
        if (getView() != null) {
            ((WebHostView) getView()).setTitle("");
        }
    }

    public final void closeKeyboardIfNeeded() {
        a();
    }

    private void a() {
        if (getView() != null && ((WebHostView) getView()).webView != null && ((WebHostView) getView()).webView.getContext() != null) {
            cab.snapp.c.c.tryHideKeyboard(((WebHostView) getView()).webView.getContext(), ((WebHostView) getView()).webView);
        }
    }
}
