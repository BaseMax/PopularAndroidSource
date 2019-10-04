package cab.snapp.passenger.units.referral;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.referral.a.a;
import cab.snapp.snappuikit.c;

public class ReferralView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1045a;
    @BindView(2131362786)
    RecyclerView appsRecyclerView;

    /* renamed from: b  reason: collision with root package name */
    private c f1046b;
    @BindView(2131362784)
    TextView codeTextView;
    @BindView(2131362787)
    TextView introTextView;
    @BindView(2131362785)
    ProgressBar progressBar;

    public ReferralView(Context context) {
        super(context);
    }

    public ReferralView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ReferralView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public ProgressBar getProgressBar() {
        return this.progressBar;
    }

    public void setReferralIntroText(String str) {
        this.introTextView.setText(str);
    }

    public void setReferralCodeText(String str) {
        this.codeTextView.setText(str);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362784})
    public void onReferalCodeClicked() {
        c cVar = this.f1045a;
        if (cVar != null) {
            cVar.onReferalCodeClicked();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        c cVar = this.f1045a;
        if (cVar != null) {
            cVar.onBackPressed();
        }
    }

    public void fillReferralAppsRecyclerView(a aVar, GridLayoutManager gridLayoutManager) {
        this.appsRecyclerView.setLayoutManager(gridLayoutManager);
        this.appsRecyclerView.setAdapter(aVar);
    }

    public void showLoading() {
        this.progressBar.setVisibility(0);
    }

    public void hideLoading() {
        this.progressBar.setVisibility(8);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        this.f1046b = new c(this);
        this.f1046b.setTitle((int) R.string.free_ride_new);
        this.f1046b.setBackButton(R.drawable.arrow_back_white, new View.OnClickListener() {
            public final void onClick(View view) {
                ReferralView.this.a(view);
            }
        });
    }

    public void setPresenter(c cVar) {
        this.f1045a = cVar;
    }
}
