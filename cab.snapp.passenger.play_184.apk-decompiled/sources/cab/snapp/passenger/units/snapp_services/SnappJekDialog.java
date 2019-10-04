package cab.snapp.passenger.units.snapp_services;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatDialogFragment;
import androidx.appcompat.widget.AppCompatButton;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import io.github.kshitij_jain.indicatorview.IndicatorView;
import java.util.ArrayList;
import javax.inject.Inject;

public class SnappJekDialog extends AppCompatDialogFragment implements ViewPager.OnPageChangeListener {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    c f1298a;

    /* renamed from: b  reason: collision with root package name */
    private a f1299b;
    @BindView(2131362084)
    ViewPagerWithWrapContent contentViewPager;
    @BindView(2131362026)
    IndicatorView indicatorView;
    @BindView(2131362085)
    AppCompatButton nextBtn;

    public void onPageScrollStateChanged(int i) {
    }

    public void onPageScrolled(int i, float f, int i2) {
    }

    @OnClick({2131362083})
    public void closeDialog() {
        this.f1298a.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ONBOARDING_SNAPP_GROUP, "[skip]");
        dismiss();
    }

    @OnClick({2131362085})
    public void goToNext() {
        int currentItem = this.contentViewPager.getCurrentItem();
        if (currentItem < this.f1299b.getCount() - 1) {
            this.contentViewPager.setCurrentItem(currentItem + 1);
            return;
        }
        this.f1298a.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ONBOARDING_SNAPP_GROUP, "[gotIt]");
        dismiss();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_snapp_jek, viewGroup, false);
        ButterKnife.bind((Object) this, inflate);
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SnappJekDialogData(R.string.jek_tutorial_desc1, R.drawable.ic_jek_tutorial1));
        arrayList.add(new SnappJekDialogData(R.string.jek_tutorial_desc2, R.drawable.ic_jek_tutorial2));
        arrayList.add(new SnappJekDialogData(R.string.jek_tutorial_desc3, R.drawable.ic_jek_tutorial3));
        this.f1299b = new a(getChildFragmentManager(), arrayList);
        this.indicatorView.setPageIndicators(arrayList.size());
        this.contentViewPager.setAdapter(this.f1299b);
        this.contentViewPager.addOnPageChangeListener(this);
    }

    public void onPageSelected(int i) {
        this.indicatorView.setCurrentPage(i);
        if (i < this.f1299b.getCount() - 1) {
            this.nextBtn.setText(getString(R.string.next_one));
        } else {
            this.nextBtn.setText(getString(R.string.enter));
        }
    }
}
