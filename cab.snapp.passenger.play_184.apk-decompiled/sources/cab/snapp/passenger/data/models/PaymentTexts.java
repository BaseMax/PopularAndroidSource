package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class PaymentTexts {
    @c("ap_wallet_title")
    private String apWalletTitle;
    @c("ap_wallet_content")
    private String appWalletRegistrationContent;
    @c("ap_wallet_link")
    private String appWalletRegistrationLink;
    @c("online_payment_title")
    private String onlinePaymentTitle;
    @c("snapp_card_title")
    private String snappCardTitle;

    public String getOnlinePaymentTitle() {
        return this.onlinePaymentTitle;
    }

    public void setOnlinePaymentTitle(String str) {
        this.onlinePaymentTitle = str;
    }

    public String getApWalletTitle() {
        return this.apWalletTitle;
    }

    public void setApWalletTitle(String str) {
        this.apWalletTitle = str;
    }

    public String getSnappCardTitle() {
        return this.snappCardTitle;
    }

    public void setSnappCardTitle(String str) {
        this.snappCardTitle = str;
    }

    public String getAppWalletRegistrationContent() {
        return this.appWalletRegistrationContent;
    }

    public String getAppWalletRegistrationLink() {
        return this.appWalletRegistrationLink;
    }

    public String toString() {
        return "PaymentTexts{onlinePaymentTitle='" + this.onlinePaymentTitle + '\'' + ", apWalletTitle='" + this.apWalletTitle + '\'' + ", snappCardTitle='" + this.snappCardTitle + '\'' + ", appWalletRegistrationContent='" + this.appWalletRegistrationContent + '\'' + ", appWalletRegistrationLink='" + this.appWalletRegistrationLink + '\'' + '}';
    }
}
