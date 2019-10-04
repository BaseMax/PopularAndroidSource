package cab.snapp.passenger.units.tour;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import io.github.kshitij_jain.indicatorview.IndicatorView;

public class TourView_ViewBinding implements Unbinder {
    private TourView target;
    private View view7f0a04d9;
    private View view7f0a04da;
    private View view7f0a04dc;

    public TourView_ViewBinding(TourView tourView) {
        this(tourView, tourView);
    }

    public TourView_ViewBinding(final TourView tourView, View view) {
        this.target = tourView;
        tourView.viewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.viewpager, "field 'viewPager'", ViewPager.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_tour_next_image_view_container, "field 'nextImageViewLayout' and method 'onNextPageImageViewClick'");
        tourView.nextImageViewLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.view_tour_next_image_view_container, "field 'nextImageViewLayout'", LinearLayout.class);
        this.view7f0a04dc = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                tourView.onNextPageImageViewClick();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_tour_enter_button, "field 'enterButton' and method 'onEnterButtonClick'");
        tourView.enterButton = (SnappButton) Utils.castView(findRequiredView2, R.id.view_tour_enter_button, "field 'enterButton'", SnappButton.class);
        this.view7f0a04da = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                tourView.onEnterButtonClick();
            }
        });
        tourView.nextImageView = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_tour_next_image_view, "field 'nextImageView'", ImageView.class);
        tourView.circleIndicatorView = (IndicatorView) Utils.findRequiredViewAsType(view, R.id.circle_indicator_view, "field 'circleIndicatorView'", IndicatorView.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_tour_cancel_image_view, "method 'onCancelTourTextViewClick'");
        this.view7f0a04d9 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                tourView.onCancelTourTextViewClick();
            }
        });
    }

    public void unbind() {
        TourView tourView = this.target;
        if (tourView != null) {
            this.target = null;
            tourView.viewPager = null;
            tourView.nextImageViewLayout = null;
            tourView.enterButton = null;
            tourView.nextImageView = null;
            tourView.circleIndicatorView = null;
            this.view7f0a04dc.setOnClickListener(null);
            this.view7f0a04dc = null;
            this.view7f0a04da.setOnClickListener(null);
            this.view7f0a04da = null;
            this.view7f0a04d9.setOnClickListener(null);
            this.view7f0a04d9 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
