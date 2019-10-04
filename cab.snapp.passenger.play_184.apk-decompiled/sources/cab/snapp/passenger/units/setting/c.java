package cab.snapp.passenger.units.setting;

import android.app.Activity;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappCheckBox;
import cab.snapp.snappuikit.c.a;

public final class c extends BasePresenter<SettingView, a> {
    public final void activateNewsLetterEmail(boolean z) {
        setNewsLetterCheckBox(z);
        setNewsLetterSummaryState(z);
    }

    public final void activateRideInfoEmail(boolean z) {
        setRideInfoEmailCheckBox(z);
        setRideInfoEmailSummaryState(z);
    }

    public final void activateRideInfoSMS(boolean z) {
        setRideInfoSMSCheckBox(z);
        setRideInfoSMSSummaryState(z);
    }

    public final void activateTransactionSMS(boolean z) {
        setRideTransactionSMSCheckBox(z);
        setTransactionSummaryState(z);
    }

    public final void activateStatisticalInfo(boolean z) {
        setStatisticalCheckBox(z);
    }

    public final void setNewsLetterCheckBox(boolean z) {
        if (getView() != null) {
            ((SettingView) getView()).setNewsLetterCheckBox(z);
        }
    }

    public final void setRideInfoEmailCheckBox(boolean z) {
        if (getView() != null) {
            ((SettingView) getView()).setRideInfoEmailCheckBox(z);
        }
    }

    public final void setRideInfoSMSCheckBox(boolean z) {
        if (getView() != null) {
            ((SettingView) getView()).setRideInfoSMSCheckBox(z);
        }
    }

    public final void setRideTransactionSMSCheckBox(boolean z) {
        if (getView() != null) {
            ((SettingView) getView()).setTransactionCheckBox(z);
        }
    }

    public final void setStatisticalCheckBox(boolean z) {
        if (getView() != null) {
            ((SettingView) getView()).setStatisticalInfoCheckBox(z);
        }
    }

    public final void setTrafficMapCheckBox(boolean z) {
        if (getView() != null) {
            ((SettingView) getView()).setTrafficMapCheckBox(z);
        }
    }

    public final void showTrafficSection(boolean z) {
        if (getView() != null) {
            if (z) {
                ((SettingView) getView()).showMapSetting();
            } else {
                ((SettingView) getView()).hideMapSetting();
            }
        }
    }

    public final void checkBoxClicked(SnappCheckBox snappCheckBox) {
        if (getInteractor() != null) {
            int id = snappCheckBox.getId();
            if (id == R.id.view_setting_add_to_news_letter_checkBox) {
                ((a) getInteractor()).newsLetterCheckBoxToggled(snappCheckBox);
            }
            if (id == R.id.view_setting_receive_ride_emails_checkBox) {
                ((a) getInteractor()).rideInfoEmailCheckBoxToggled(snappCheckBox);
            }
            if (id == R.id.view_setting_receive_ride_sms_checkBox) {
                ((a) getInteractor()).rideInfoSMSCheckBoxToggled(snappCheckBox);
            }
            if (id == R.id.view_setting_access_to_statistic_info_checkBox) {
                ((a) getInteractor()).statisticInfoCheckBoxToggled(snappCheckBox);
            }
            if (id == R.id.view_setting_ride_transaction_sms_checkBox) {
                ((a) getInteractor()).rideTransactionCheckBoxToggled(snappCheckBox);
            }
            if (id == R.id.view_setting_show_traffic_checkBox) {
                ((a) getInteractor()).trafficMapCheckBoxToggled(snappCheckBox);
            }
        }
    }

    public final void languageSelectTextViewClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).languageSelectTextViewClicked();
        }
    }

    public final void defaultWalletSelectTextViewClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).defaultWalletSelectTextViewClicked();
        }
    }

    public final void showSelectLanguageDialog() {
        if (getView() != null) {
            ((SettingView) getView()).showSelectLanguageDialog();
        }
    }

    public final void showSelectDefaultWalletDialog() {
        if (getView() != null) {
            ((SettingView) getView()).showSelectDefaultWalletDialog();
        }
    }

    public final void languageSelectedAtIndex(int i) {
        if (i != -1 && getInteractor() != null) {
            ((a) getInteractor()).languageSelectedAtIndex(i);
        }
    }

    public final void defaultWalletSelectedAtIndex(int i) {
        if (i != -1 && getInteractor() != null) {
            ((a) getInteractor()).defaultWalletSelectedAtIndex(i + 1);
        }
    }

    public final void setLanguageSummary(String str) {
        if (getView() != null) {
            ((SettingView) getView()).setLanguageSummary(str);
        }
    }

    public final void setNewsLetterSummaryState(boolean z) {
        if (getView() != null) {
            ((SettingView) getView()).setNewsLetterSummary(z);
        }
    }

    public final void setRideInfoEmailSummaryState(boolean z) {
        if (getView() != null) {
            ((SettingView) getView()).setRideInfoEmailSummary(z);
        }
    }

    public final void setRideInfoSMSSummaryState(boolean z) {
        if (getView() != null) {
            ((SettingView) getView()).setRideInfoSMSSummary(z);
        }
    }

    public final void setTransactionSummaryState(boolean z) {
        if (getView() != null) {
            ((SettingView) getView()).setTransactionSummary(z);
        }
    }

    public final void setTrafficMapSummaryState(boolean z) {
        if (getView() != null) {
            ((SettingView) getView()).setTrafficMapSummary(z);
        }
    }

    public final void activeTrafficMap(boolean z) {
        if (getView() != null) {
            setTrafficMapCheckBox(z);
            setTrafficMapSummaryState(z);
        }
    }

    public final void onItemsTitleOrSummaryClick(SnappCheckBox snappCheckBox) {
        if (snappCheckBox != null) {
            snappCheckBox.setChecked(!snappCheckBox.isChecked());
            checkBoxClicked(snappCheckBox);
        }
    }

    public final void onBackPressed() {
        if (getInteractor() != null) {
            ((a) getInteractor()).goBack();
        }
    }

    public final void startToFetchData() {
        if (getView() != null) {
            ((SettingView) getView()).showLoadingDialog();
        }
    }

    public final void finishedFetchData() {
        if (getView() != null) {
            ((SettingView) getView()).hideLoadingDialog();
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((SettingView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((SettingView) getView()).getContext(), R.color.colorPrimary);
        }
    }

    public final void setDefaultWallet(int i) {
        if (getView() != null) {
            ((SettingView) getView()).setSelectedDefaultWalletIndex(i - 1);
        }
    }

    public final void removeApWalletFromDefaultWalletList() {
        if (getView() != null) {
            ((SettingView) getView()).removeApWalletFromDefaultWalletList();
        }
    }
}
