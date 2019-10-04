package cab.snapp.passenger.units.referral;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.referral.c.a;
import com.koushikdutta.async.http.a.j;
import java.util.List;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> implements a.C0024a {

    /* renamed from: a  reason: collision with root package name */
    String f1049a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    b f1050b;
    @Inject
    c c;

    public void finish() {
        if (getRouter() != null) {
            ((d) getRouter()).navigateUp();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (!(this.f1050b.getConfig() == null || this.f1050b.getConfig().getReferralIntroText() == null || getPresenter() == null)) {
                ((c) getPresenter()).onReferralIntroTextReady(this.f1050b.getConfig().getReferralIntroText());
            }
            if (this.f1050b.getConfig() != null && this.f1050b.getConfig().getProfileResponse() != null && this.f1050b.getConfig().getProfileResponse().getReferralCode() != null && getPresenter() != null) {
                this.f1049a = this.f1050b.getConfig().getProfileResponse().getReferralCode();
                ((c) getPresenter()).onReferralCodeReady(this.f1049a);
            } else if (getPresenter() != null) {
                ((c) getPresenter()).onReferralCodeReady(getActivity().getString(R.string.no_referral));
            }
            if (getActivity() != null) {
                new cab.snapp.passenger.units.referral.c.a(getActivity().getPackageManager(), this.f1049a, this).execute(new String[0]);
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).setStatusBarColor();
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.c.reportScreenName("Referral Page");
    }

    public void onTaskStarted() {
        if (getPresenter() != null) {
            ((c) getPresenter()).onLoading();
        }
    }

    public void onTaskFinished(List<ResolveInfo> list) {
        if (!(getPresenter() == null || list == null || list.isEmpty())) {
            ((c) getPresenter()).onReferralAppsReady(list);
        }
    }

    public void shareReferralCodeByApp(ResolveInfo resolveInfo) {
        if (!(resolveInfo == null || getActivity() == null || this.f1050b.getConfig() == null || this.f1050b.getConfig().getReferralShareableText() == null || this.f1050b.getConfig().getReferralBaseUri() == null || this.f1050b.getConfig().getProfileResponse() == null || this.f1050b.getConfig().getProfileResponse().getReferralCode() == null)) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            ComponentName componentName = new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name);
            String referralShareableText = this.f1050b.getConfig().getReferralShareableText();
            String referralBaseUri = this.f1050b.getConfig().getReferralBaseUri();
            String referralCode = this.f1050b.getConfig().getProfileResponse().getReferralCode();
            String str = referralShareableText + referralBaseUri + referralCode;
            if (!str.isEmpty()) {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setClassName(componentName.getPackageName(), componentName.getClassName());
                intent.setType(j.CONTENT_TYPE);
                intent.putExtra("android.intent.extra.TEXT", str);
                getActivity().startActivity(intent);
            }
        }
        String str2 = c.a.REFERRAL_ITEM_CLICK;
        if (this.c.hasUserEmailProvided()) {
            c cVar = this.c;
            cVar.sendWithAttributesViaAdjust(str2, cVar.getUserEmail(), null);
        }
    }
}
