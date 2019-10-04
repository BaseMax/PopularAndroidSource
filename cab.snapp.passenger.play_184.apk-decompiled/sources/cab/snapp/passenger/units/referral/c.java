package cab.snapp.passenger.units.referral;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.pm.ResolveInfo;
import androidx.recyclerview.widget.GridLayoutManager;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.referral.b.a;
import cab.snapp.snappuikit.b;
import java.util.List;

public final class c extends BasePresenter<ReferralView, a> implements a {
    public final void onReferralIntroTextReady(String str) {
        if (getView() != null) {
            ((ReferralView) getView()).setReferralIntroText(str);
        }
    }

    public final void onReferralCodeReady(String str) {
        if (getView() != null) {
            ((ReferralView) getView()).setReferralCodeText(str);
        }
    }

    public final void onReferralAppsReady(List<ResolveInfo> list) {
        if (getView() != null && ((ReferralView) getView()).getContext() != null) {
            ((ReferralView) getView()).fillReferralAppsRecyclerView(new cab.snapp.passenger.units.referral.a.a(this, list), new GridLayoutManager(((ReferralView) getView()).getContext(), 3, 1, false));
            ((ReferralView) getView()).hideLoading();
        }
    }

    public final void onLoading() {
        if (getView() != null) {
            ((ReferralView) getView()).showLoading();
        }
    }

    public final void onReferalCodeClicked() {
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (!(aVar.getActivity() == null || aVar.f1050b.getConfig() == null || aVar.f1050b.getConfig().getProfileResponse() == null || aVar.f1050b.getConfig().getProfileResponse().getReferralCode() == null || aVar.f1050b.getConfig().getProfileResponse().getReferralCode().isEmpty())) {
                try {
                    aVar.f1049a = aVar.f1050b.getConfig().getProfileResponse().getReferralCode();
                    ClipboardManager clipboardManager = (ClipboardManager) aVar.getActivity().getSystemService("clipboard");
                    if (clipboardManager != null) {
                        clipboardManager.setPrimaryClip(ClipData.newPlainText("Copied Text", aVar.f1049a));
                        b.makeText((Context) aVar.getActivity(), aVar.getActivity().getString(R.string.referral_copied_to_clipboard)).show();
                    }
                } catch (Exception e) {
                    com.a.a.a.logException(e);
                }
            }
        }
    }

    public final void onBackPressed() {
        if (getInteractor() != null) {
            ((a) getInteractor()).finish();
        }
    }

    public final void shareAppsClicked(ResolveInfo resolveInfo) {
        if (getInteractor() != null && resolveInfo != null) {
            ((a) getInteractor()).shareReferralCodeByApp(resolveInfo);
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((ReferralView) getView()).getContext() instanceof Activity)) {
            cab.snapp.snappuikit.c.a.setStatusBarColorRes((Activity) ((ReferralView) getView()).getContext(), R.color.colorPrimary);
        }
    }
}
