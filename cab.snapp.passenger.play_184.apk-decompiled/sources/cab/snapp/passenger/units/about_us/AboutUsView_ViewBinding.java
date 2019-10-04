package cab.snapp.passenger.units.about_us;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappLoading;

public class AboutUsView_ViewBinding implements Unbinder {
    private AboutUsView target;
    private View view7f0a0323;

    public AboutUsView_ViewBinding(AboutUsView aboutUsView) {
        this(aboutUsView, aboutUsView);
    }

    public AboutUsView_ViewBinding(final AboutUsView aboutUsView, View view) {
        this.target = aboutUsView;
        aboutUsView.loadingAboutUs = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.view_about_us_snapp_loading_about_snapp, "field 'loadingAboutUs'", SnappLoading.class);
        aboutUsView.tvAboutContent = (TextView) Utils.findRequiredViewAsType(view, R.id.view_about_us_tv_about_content, "field 'tvAboutContent'", TextView.class);
        aboutUsView.tvVersionName = (TextView) Utils.findRequiredViewAsType(view, R.id.view_about_us_version_name_tv, "field 'tvVersionName'", TextView.class);
        aboutUsView.tvApiServer = (TextView) Utils.findRequiredViewAsType(view, R.id.view_about_us_api_server_tv, "field 'tvApiServer'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_about_us_term_condition_link_tv, "method 'goToRulesLink'");
        this.view7f0a0323 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                aboutUsView.goToRulesLink();
            }
        });
    }

    public void unbind() {
        AboutUsView aboutUsView = this.target;
        if (aboutUsView != null) {
            this.target = null;
            aboutUsView.loadingAboutUs = null;
            aboutUsView.tvAboutContent = null;
            aboutUsView.tvVersionName = null;
            aboutUsView.tvApiServer = null;
            this.view7f0a0323.setOnClickListener(null);
            this.view7f0a0323 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
