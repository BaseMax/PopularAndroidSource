package cab.snapp.passenger.units.setting;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappCheckBox;

public class SettingView_ViewBinding implements Unbinder {
    private SettingView target;
    private View view7f0a045f;
    private View view7f0a0462;
    private View view7f0a0464;
    private View view7f0a0465;
    private View view7f0a046b;
    private View view7f0a046d;
    private View view7f0a046e;
    private View view7f0a046f;
    private View view7f0a0471;
    private View view7f0a0472;
    private View view7f0a0473;
    private View view7f0a0475;
    private View view7f0a0476;
    private View view7f0a0477;
    private View view7f0a0478;
    private View view7f0a0479;
    private View view7f0a047a;
    private View view7f0a047b;
    private View view7f0a047c;
    private View view7f0a047d;

    public SettingView_ViewBinding(SettingView settingView) {
        this(settingView, settingView);
    }

    public SettingView_ViewBinding(final SettingView settingView, View view) {
        this.target = settingView;
        View findRequiredView = Utils.findRequiredView(view, R.id.view_setting_add_to_news_letter_checkBox, "field 'newsLetterCheckBox' and method 'onCheckBoxClick'");
        settingView.newsLetterCheckBox = (SnappCheckBox) Utils.castView(findRequiredView, R.id.view_setting_add_to_news_letter_checkBox, "field 'newsLetterCheckBox'", SnappCheckBox.class);
        this.view7f0a0462 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onCheckBoxClick((SnappCheckBox) Utils.castParam(view, "doClick", 0, "onCheckBoxClick", 0, SnappCheckBox.class));
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_setting_add_to_news_letter_summary_textView, "field 'newsLetterSummary' and method 'onItemsTitleOrSummaryClick'");
        settingView.newsLetterSummary = (TextView) Utils.castView(findRequiredView2, R.id.view_setting_add_to_news_letter_summary_textView, "field 'newsLetterSummary'", TextView.class);
        this.view7f0a0464 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_setting_receive_ride_emails_checkBox, "field 'rideInfoEmailCheckBox' and method 'onCheckBoxClick'");
        settingView.rideInfoEmailCheckBox = (SnappCheckBox) Utils.castView(findRequiredView3, R.id.view_setting_receive_ride_emails_checkBox, "field 'rideInfoEmailCheckBox'", SnappCheckBox.class);
        this.view7f0a046b = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onCheckBoxClick((SnappCheckBox) Utils.castParam(view, "doClick", 0, "onCheckBoxClick", 0, SnappCheckBox.class));
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.view_setting_receive_ride_emails_summary_textView, "field 'rideInfoEmailSummary' and method 'onItemsTitleOrSummaryClick'");
        settingView.rideInfoEmailSummary = (TextView) Utils.castView(findRequiredView4, R.id.view_setting_receive_ride_emails_summary_textView, "field 'rideInfoEmailSummary'", TextView.class);
        this.view7f0a046d = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.view_setting_receive_ride_sms_checkBox, "field 'rideInfoSMSCheckBox' and method 'onCheckBoxClick'");
        settingView.rideInfoSMSCheckBox = (SnappCheckBox) Utils.castView(findRequiredView5, R.id.view_setting_receive_ride_sms_checkBox, "field 'rideInfoSMSCheckBox'", SnappCheckBox.class);
        this.view7f0a046f = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onCheckBoxClick((SnappCheckBox) Utils.castParam(view, "doClick", 0, "onCheckBoxClick", 0, SnappCheckBox.class));
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.view_setting_receive_ride_sms_summary_textView, "field 'rideInfoSMSSummary' and method 'onItemsTitleOrSummaryClick'");
        settingView.rideInfoSMSSummary = (TextView) Utils.castView(findRequiredView6, R.id.view_setting_receive_ride_sms_summary_textView, "field 'rideInfoSMSSummary'", TextView.class);
        this.view7f0a0471 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        View findRequiredView7 = Utils.findRequiredView(view, R.id.view_setting_ride_transaction_sms_checkBox, "field 'rideTransactionSMSCheckBox' and method 'onCheckBoxClick'");
        settingView.rideTransactionSMSCheckBox = (SnappCheckBox) Utils.castView(findRequiredView7, R.id.view_setting_ride_transaction_sms_checkBox, "field 'rideTransactionSMSCheckBox'", SnappCheckBox.class);
        this.view7f0a0473 = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onCheckBoxClick((SnappCheckBox) Utils.castParam(view, "doClick", 0, "onCheckBoxClick", 0, SnappCheckBox.class));
            }
        });
        View findRequiredView8 = Utils.findRequiredView(view, R.id.view_setting_ride_transaction_sms_summary_textView, "field 'rideTransactionSummary' and method 'onItemsTitleOrSummaryClick'");
        settingView.rideTransactionSummary = (TextView) Utils.castView(findRequiredView8, R.id.view_setting_ride_transaction_sms_summary_textView, "field 'rideTransactionSummary'", TextView.class);
        this.view7f0a0475 = findRequiredView8;
        findRequiredView8.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        View findRequiredView9 = Utils.findRequiredView(view, R.id.view_setting_access_to_statistic_info_checkBox, "field 'statisticInfoCheckBox' and method 'onCheckBoxClick'");
        settingView.statisticInfoCheckBox = (SnappCheckBox) Utils.castView(findRequiredView9, R.id.view_setting_access_to_statistic_info_checkBox, "field 'statisticInfoCheckBox'", SnappCheckBox.class);
        this.view7f0a045f = findRequiredView9;
        findRequiredView9.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onCheckBoxClick((SnappCheckBox) Utils.castParam(view, "doClick", 0, "onCheckBoxClick", 0, SnappCheckBox.class));
            }
        });
        View findRequiredView10 = Utils.findRequiredView(view, R.id.view_setting_show_traffic_checkBox, "field 'trafficMapCheckBox' and method 'onCheckBoxClick'");
        settingView.trafficMapCheckBox = (SnappCheckBox) Utils.castView(findRequiredView10, R.id.view_setting_show_traffic_checkBox, "field 'trafficMapCheckBox'", SnappCheckBox.class);
        this.view7f0a047b = findRequiredView10;
        findRequiredView10.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onCheckBoxClick((SnappCheckBox) Utils.castParam(view, "doClick", 0, "onCheckBoxClick", 0, SnappCheckBox.class));
            }
        });
        View findRequiredView11 = Utils.findRequiredView(view, R.id.view_setting_show_traffic_summary_textView, "field 'trafficMapSummary' and method 'onItemsTitleOrSummaryClick'");
        settingView.trafficMapSummary = (TextView) Utils.castView(findRequiredView11, R.id.view_setting_show_traffic_summary_textView, "field 'trafficMapSummary'", TextView.class);
        this.view7f0a047c = findRequiredView11;
        findRequiredView11.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        settingView.trafficSectionTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.view_setting_map_section_textView, "field 'trafficSectionTitle'", TextView.class);
        View findRequiredView12 = Utils.findRequiredView(view, R.id.view_setting_show_traffic_title_textView, "field 'trafficShowItemTitle' and method 'onItemsTitleOrSummaryClick'");
        settingView.trafficShowItemTitle = (TextView) Utils.castView(findRequiredView12, R.id.view_setting_show_traffic_title_textView, "field 'trafficShowItemTitle'", TextView.class);
        this.view7f0a047d = findRequiredView12;
        findRequiredView12.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        View findRequiredView13 = Utils.findRequiredView(view, R.id.view_setting_select_language_title_textView, "field 'languageSelectTitleTextView' and method 'onItemsTitleOrSummaryClick'");
        settingView.languageSelectTitleTextView = (TextView) Utils.castView(findRequiredView13, R.id.view_setting_select_language_title_textView, "field 'languageSelectTitleTextView'", TextView.class);
        this.view7f0a047a = findRequiredView13;
        findRequiredView13.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        View findRequiredView14 = Utils.findRequiredView(view, R.id.view_setting_select_language_summary_textView, "field 'languageSelectSummaryTextView' and method 'onItemsTitleOrSummaryClick'");
        settingView.languageSelectSummaryTextView = (TextView) Utils.castView(findRequiredView14, R.id.view_setting_select_language_summary_textView, "field 'languageSelectSummaryTextView'", TextView.class);
        this.view7f0a0479 = findRequiredView14;
        findRequiredView14.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        View findRequiredView15 = Utils.findRequiredView(view, R.id.view_setting_select_default_wallet_summary_textView, "field 'defaultWaletTextView' and method 'onItemsTitleOrSummaryClick'");
        settingView.defaultWaletTextView = (TextView) Utils.castView(findRequiredView15, R.id.view_setting_select_default_wallet_summary_textView, "field 'defaultWaletTextView'", TextView.class);
        this.view7f0a0477 = findRequiredView15;
        findRequiredView15.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        View findRequiredView16 = Utils.findRequiredView(view, R.id.view_setting_add_to_news_letter_title_textView, "method 'onItemsTitleOrSummaryClick'");
        this.view7f0a0465 = findRequiredView16;
        findRequiredView16.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        View findRequiredView17 = Utils.findRequiredView(view, R.id.view_setting_receive_ride_emails_title_textView, "method 'onItemsTitleOrSummaryClick'");
        this.view7f0a046e = findRequiredView17;
        findRequiredView17.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        View findRequiredView18 = Utils.findRequiredView(view, R.id.view_setting_receive_ride_sms_title_textView, "method 'onItemsTitleOrSummaryClick'");
        this.view7f0a0472 = findRequiredView18;
        findRequiredView18.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        View findRequiredView19 = Utils.findRequiredView(view, R.id.view_setting_ride_transaction_sms_title_textView, "method 'onItemsTitleOrSummaryClick'");
        this.view7f0a0476 = findRequiredView19;
        findRequiredView19.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
        View findRequiredView20 = Utils.findRequiredView(view, R.id.view_setting_select_default_wallet_title_textView, "method 'onItemsTitleOrSummaryClick'");
        this.view7f0a0478 = findRequiredView20;
        findRequiredView20.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                settingView.onItemsTitleOrSummaryClick(view);
            }
        });
    }

    public void unbind() {
        SettingView settingView = this.target;
        if (settingView != null) {
            this.target = null;
            settingView.newsLetterCheckBox = null;
            settingView.newsLetterSummary = null;
            settingView.rideInfoEmailCheckBox = null;
            settingView.rideInfoEmailSummary = null;
            settingView.rideInfoSMSCheckBox = null;
            settingView.rideInfoSMSSummary = null;
            settingView.rideTransactionSMSCheckBox = null;
            settingView.rideTransactionSummary = null;
            settingView.statisticInfoCheckBox = null;
            settingView.trafficMapCheckBox = null;
            settingView.trafficMapSummary = null;
            settingView.trafficSectionTitle = null;
            settingView.trafficShowItemTitle = null;
            settingView.languageSelectTitleTextView = null;
            settingView.languageSelectSummaryTextView = null;
            settingView.defaultWaletTextView = null;
            this.view7f0a0462.setOnClickListener(null);
            this.view7f0a0462 = null;
            this.view7f0a0464.setOnClickListener(null);
            this.view7f0a0464 = null;
            this.view7f0a046b.setOnClickListener(null);
            this.view7f0a046b = null;
            this.view7f0a046d.setOnClickListener(null);
            this.view7f0a046d = null;
            this.view7f0a046f.setOnClickListener(null);
            this.view7f0a046f = null;
            this.view7f0a0471.setOnClickListener(null);
            this.view7f0a0471 = null;
            this.view7f0a0473.setOnClickListener(null);
            this.view7f0a0473 = null;
            this.view7f0a0475.setOnClickListener(null);
            this.view7f0a0475 = null;
            this.view7f0a045f.setOnClickListener(null);
            this.view7f0a045f = null;
            this.view7f0a047b.setOnClickListener(null);
            this.view7f0a047b = null;
            this.view7f0a047c.setOnClickListener(null);
            this.view7f0a047c = null;
            this.view7f0a047d.setOnClickListener(null);
            this.view7f0a047d = null;
            this.view7f0a047a.setOnClickListener(null);
            this.view7f0a047a = null;
            this.view7f0a0479.setOnClickListener(null);
            this.view7f0a0479 = null;
            this.view7f0a0477.setOnClickListener(null);
            this.view7f0a0477 = null;
            this.view7f0a0465.setOnClickListener(null);
            this.view7f0a0465 = null;
            this.view7f0a046e.setOnClickListener(null);
            this.view7f0a046e = null;
            this.view7f0a0472.setOnClickListener(null);
            this.view7f0a0472 = null;
            this.view7f0a0476.setOnClickListener(null);
            this.view7f0a0476 = null;
            this.view7f0a0478.setOnClickListener(null);
            this.view7f0a0478 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
