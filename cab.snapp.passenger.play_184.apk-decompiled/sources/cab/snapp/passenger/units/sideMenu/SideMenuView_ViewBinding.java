package cab.snapp.passenger.units.sideMenu;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;

public class SideMenuView_ViewBinding implements Unbinder {
    private SideMenuView target;
    private View view7f0a02a6;
    private View view7f0a02a8;

    public SideMenuView_ViewBinding(SideMenuView sideMenuView) {
        this(sideMenuView, sideMenuView);
    }

    public SideMenuView_ViewBinding(final SideMenuView sideMenuView, View view) {
        this.target = sideMenuView;
        sideMenuView.headerLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.side_menu_header_layout, "field 'headerLayout'", RelativeLayout.class);
        sideMenuView.headerRoadIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.side_menu_header_road_iv, "field 'headerRoadIv'", ImageView.class);
        sideMenuView.headerCarIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.side_menu_header_car_iv, "field 'headerCarIv'", ImageView.class);
        sideMenuView.recycler = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.side_menu_recycler, "field 'recycler'", RecyclerView.class);
        sideMenuView.footerLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.side_menu_footer_layout, "field 'footerLayout'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.side_menu_footer_free_ride_layout, "field 'footerFreeRideLayout' and method 'onFooterFreeRideLayoutClicked'");
        sideMenuView.footerFreeRideLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.side_menu_footer_free_ride_layout, "field 'footerFreeRideLayout'", LinearLayout.class);
        this.view7f0a02a6 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                sideMenuView.onFooterFreeRideLayoutClicked();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.side_menu_footer_snapp_food_layout, "field 'footerSnappFoodLayout' and method 'onFooterSnappFoodLayoutClicked'");
        sideMenuView.footerSnappFoodLayout = (LinearLayout) Utils.castView(findRequiredView2, R.id.side_menu_footer_snapp_food_layout, "field 'footerSnappFoodLayout'", LinearLayout.class);
        this.view7f0a02a8 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                sideMenuView.onFooterSnappFoodLayoutClicked();
            }
        });
    }

    public void unbind() {
        SideMenuView sideMenuView = this.target;
        if (sideMenuView != null) {
            this.target = null;
            sideMenuView.headerLayout = null;
            sideMenuView.headerRoadIv = null;
            sideMenuView.headerCarIv = null;
            sideMenuView.recycler = null;
            sideMenuView.footerLayout = null;
            sideMenuView.footerFreeRideLayout = null;
            sideMenuView.footerSnappFoodLayout = null;
            this.view7f0a02a6.setOnClickListener(null);
            this.view7f0a02a6 = null;
            this.view7f0a02a8.setOnClickListener(null);
            this.view7f0a02a8 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
