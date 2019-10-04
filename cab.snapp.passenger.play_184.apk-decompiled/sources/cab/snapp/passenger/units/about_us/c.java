package cab.snapp.passenger.units.about_us;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.data_access_layer.network.b;
import cab.snapp.passenger.play.R;
import com.a.a.a;

public final class c extends BasePresenter<AboutUsView, a> {
    public final void onInitialize(String str) {
        if (getView() != null) {
            ((AboutUsView) getView()).setVersionName(str);
        }
    }

    public final void onAboutUsContentReady(String str) {
        if (getView() != null) {
            ((AboutUsView) getView()).hideLoading();
            ((AboutUsView) getView()).setAboutUsContent(str);
        }
    }

    public final void onTermsAndConditionLinkClicked() {
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (aVar.getActivity() != null) {
                try {
                    aVar.getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(b.a.getTermsAndConditionLink())));
                } catch (Exception e) {
                    e.printStackTrace();
                    a.logException(e);
                }
            }
        }
    }

    public final void onBackButtonClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).finish();
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((AboutUsView) getView()).getContext() instanceof Activity)) {
            cab.snapp.snappuikit.c.a.setStatusBarColorRes((Activity) ((AboutUsView) getView()).getContext(), R.color.colorPrimary);
        }
    }
}
