package cab.snapp.passenger.units.splash;

import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;

public class SplashView_ViewBinding implements Unbinder {
    private SplashView target;
    private View view7f0a02cb;
    private View view7f0a02cc;

    public SplashView_ViewBinding(SplashView splashView) {
        this(splashView, splashView);
    }

    public SplashView_ViewBinding(final SplashView splashView, View view) {
        this.target = splashView;
        splashView.snappLogoIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.splash_center_image_view, "field 'snappLogoIv'", ImageView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.splash_try_again_button, "field 'tryAgainButton' and method 'onTryAgainButtonClicked'");
        splashView.tryAgainButton = (SnappButton) Utils.castView(findRequiredView, R.id.splash_try_again_button, "field 'tryAgainButton'", SnappButton.class);
        this.view7f0a02cb = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                splashView.onTryAgainButtonClicked();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.splash_version_name_tv, "field 'versionNameTv' and method 'onVersionNameClicked'");
        splashView.versionNameTv = (AppCompatTextView) Utils.castView(findRequiredView2, R.id.splash_version_name_tv, "field 'versionNameTv'", AppCompatTextView.class);
        this.view7f0a02cc = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                splashView.onVersionNameClicked();
            }
        });
    }

    public void unbind() {
        SplashView splashView = this.target;
        if (splashView != null) {
            this.target = null;
            splashView.snappLogoIv = null;
            splashView.tryAgainButton = null;
            splashView.versionNameTv = null;
            this.view7f0a02cb.setOnClickListener(null);
            this.view7f0a02cb = null;
            this.view7f0a02cc.setOnClickListener(null);
            this.view7f0a02cc = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
