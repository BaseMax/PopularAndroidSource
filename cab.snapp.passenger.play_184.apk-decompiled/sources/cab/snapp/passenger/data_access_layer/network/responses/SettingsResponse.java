package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class SettingsResponse extends f {
    @c("default_wallet")
    private int defaultWallet;
    @c("passenger_newsletter_emails")
    private int newsletter;
    @c("passenger_number_masking")
    private int numberMasking;
    @c("privacy_setting")
    private int privacySetting;
    @c("passenger_ride_emails")
    private int rideEmails;
    @c("passenger_ride_sms")
    private int rideSMS;
    @c("passenger_transaction_sms")
    private int transactionSMS;

    public int getNewsletter() {
        return this.newsletter;
    }

    public void setNewsletter(int i) {
        this.newsletter = i;
    }

    public int getRideEmails() {
        return this.rideEmails;
    }

    public void setRideEmails(int i) {
        this.rideEmails = i;
    }

    public int getRideSMS() {
        return this.rideSMS;
    }

    public void setRideSMS(int i) {
        this.rideSMS = i;
    }

    public int getTransactionSMS() {
        return this.transactionSMS;
    }

    public void setTransactionSMS(int i) {
        this.transactionSMS = i;
    }

    public int getNumberMasking() {
        return this.numberMasking;
    }

    public void setNumberMasking(int i) {
        this.numberMasking = i;
    }

    public int getPrivacySetting() {
        return this.privacySetting;
    }

    public void setPrivacySetting(int i) {
        this.privacySetting = i;
    }

    public int getDefaultWallet() {
        return this.defaultWallet;
    }

    public void setDefaultWallet(int i) {
        this.defaultWallet = i;
    }

    public String toString() {
        return "SettingsResponse{newsletter=" + this.newsletter + ", rideEmails=" + this.rideEmails + ", rideSMS=" + this.rideSMS + ", transactionSMS=" + this.transactionSMS + ", numberMasking=" + this.numberMasking + ", privacySetting=" + this.privacySetting + ", defaultWallet=" + this.defaultWallet + '}';
    }
}
