package cab.snapp.passenger.units.webhost;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;

public class WebHostView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1407a;
    @BindView(2131363038)
    ImageButton homeImageButton;
    @BindView(2131363039)
    ProgressBar progressBar;
    @BindView(2131363040)
    Toolbar toolbar;
    @BindView(2131363041)
    AppCompatTextView toolbarTitleTextView;
    @BindView(2131363042)
    WebView webView;

    /* access modifiers changed from: package-private */
    @OnClick({2131363037})
    public void onBackButton() {
        c cVar = this.f1407a;
        if (cVar != null) {
            cVar.onBackButtonClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363038})
    public void onHomeButton() {
        c cVar = this.f1407a;
        if (cVar != null) {
            cVar.onHomeButtonClicked();
        }
    }

    public WebHostView(Context context) {
        super(context);
    }

    public WebHostView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public WebHostView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setTitle(String str) {
        this.toolbarTitleTextView.setText(str);
    }

    public void changeTopBarVisibility(Boolean bool) {
        if (bool.booleanValue()) {
            this.toolbar.setVisibility(8);
        } else {
            this.toolbar.setVisibility(0);
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f1407a = cVar;
    }
}
