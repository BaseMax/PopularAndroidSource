package cab.snapp.passenger.units.tour;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.snappuikit.SnappButton;
import io.github.kshitij_jain.indicatorview.IndicatorView;

public class TourView extends LinearLayout implements BaseView<e> {

    /* renamed from: a  reason: collision with root package name */
    protected e f1385a;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f1386b;
    @BindView(2131362026)
    IndicatorView circleIndicatorView;
    @BindView(2131363034)
    SnappButton enterButton;
    @BindView(2131363035)
    ImageView nextImageView;
    @BindView(2131363036)
    LinearLayout nextImageViewLayout;
    @BindView(2131363052)
    ViewPager viewPager;

    public TourView(Context context) {
        super(context);
    }

    public TourView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TourView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131363034})
    public void onEnterButtonClick() {
        e eVar = this.f1385a;
        if (eVar != null) {
            eVar.onEnterButtonClick();
        }
    }

    @OnClick({2131363033})
    public void onCancelTourTextViewClick() {
        e eVar = this.f1385a;
        if (eVar != null) {
            eVar.onCancelTourClick();
        }
    }

    @OnClick({2131363036})
    public void onNextPageImageViewClick() {
        e eVar = this.f1385a;
        if (eVar != null) {
            eVar.onNextPageImageViewClick();
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1386b = ButterKnife.bind((Object) this, (View) this);
    }

    public void showEnterButton() {
        this.enterButton.setVisibility(0);
    }

    public void hideEnterButton() {
        this.enterButton.setVisibility(8);
    }

    public void showNextImageView() {
        this.nextImageViewLayout.setVisibility(0);
    }

    public void hideNextImageView() {
        this.nextImageViewLayout.setVisibility(8);
    }

    public void setPresenter(e eVar) {
        this.f1385a = eVar;
    }

    public void rotateNextImageViewForRTLLanguages() {
        this.nextImageView.setRotationX(180.0f);
    }
}
