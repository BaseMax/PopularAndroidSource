package cab.snapp.passenger.units.webhost;

import android.view.View;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;

public class WebHostView_ViewBinding implements Unbinder {
    private WebHostView target;
    private View view7f0a04dd;
    private View view7f0a04de;

    public WebHostView_ViewBinding(WebHostView webHostView) {
        this(webHostView, webHostView);
    }

    public WebHostView_ViewBinding(final WebHostView webHostView, View view) {
        this.target = webHostView;
        webHostView.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.view_web_host_toolbar, "field 'toolbar'", Toolbar.class);
        webHostView.progressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.view_web_host_progressbar, "field 'progressBar'", ProgressBar.class);
        webHostView.webView = (WebView) Utils.findRequiredViewAsType(view, R.id.view_web_host_webview, "field 'webView'", WebView.class);
        webHostView.toolbarTitleTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_web_host_toolbar_title_textview, "field 'toolbarTitleTextView'", AppCompatTextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_web_host_home_imagebutton, "field 'homeImageButton' and method 'onHomeButton'");
        webHostView.homeImageButton = (ImageButton) Utils.castView(findRequiredView, R.id.view_web_host_home_imagebutton, "field 'homeImageButton'", ImageButton.class);
        this.view7f0a04de = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                webHostView.onHomeButton();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_web_host_back_imagebutton, "method 'onBackButton'");
        this.view7f0a04dd = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                webHostView.onBackButton();
            }
        });
    }

    public void unbind() {
        WebHostView webHostView = this.target;
        if (webHostView != null) {
            this.target = null;
            webHostView.toolbar = null;
            webHostView.progressBar = null;
            webHostView.webView = null;
            webHostView.toolbarTitleTextView = null;
            webHostView.homeImageButton = null;
            this.view7f0a04de.setOnClickListener(null);
            this.view7f0a04de = null;
            this.view7f0a04dd.setOnClickListener(null);
            this.view7f0a04dd = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
