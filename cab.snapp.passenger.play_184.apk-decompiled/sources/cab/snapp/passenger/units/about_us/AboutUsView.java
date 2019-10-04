package cab.snapp.passenger.units.about_us;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappLoading;
import cab.snapp.snappuikit.c;

public class AboutUsView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f595a;
    @BindView(2131362594)
    SnappLoading loadingAboutUs;
    @BindView(2131362596)
    TextView tvAboutContent;
    @BindView(2131362593)
    TextView tvApiServer;
    @BindView(2131362597)
    TextView tvVersionName;

    public AboutUsView(Context context) {
        super(context);
    }

    public AboutUsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AboutUsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362595})
    public void goToRulesLink() {
        this.f595a.onTermsAndConditionLinkClicked();
    }

    public void hideLoading() {
        if (this.loadingAboutUs.getVisibility() != 8) {
            this.loadingAboutUs.setVisibility(8);
        }
    }

    public void setVersionName(String str) {
        this.tvVersionName.setText(str);
    }

    public void setAboutUsContent(String str) {
        this.tvAboutContent.setText(str);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        c cVar = new c(this);
        cVar.setTitle((int) R.string.about_snapp);
        cVar.setBackButton(R.drawable.arrow_back_white, new View.OnClickListener() {
            public final void onClick(View view) {
                AboutUsView.this.a(view);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f595a.onBackButtonClicked();
    }

    public void setPresenter(c cVar) {
        this.f595a = cVar;
    }
}
