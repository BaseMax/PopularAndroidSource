package cab.snapp.passenger.data.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class Donation implements Parcelable {
    public static final Parcelable.Creator<Donation> CREATOR = new Parcelable.Creator<Donation>() {
        public final Donation createFromParcel(Parcel parcel) {
            return new Donation(parcel);
        }

        public final Donation[] newArray(int i) {
            return new Donation[i];
        }
    };
    @c("campaign_text")
    private String campaignText;
    @c("amount")
    private double donationAmount;
    @c("desc")
    private String donationDesc;
    @c("link")
    private String donationLink;
    @c("percent")
    private double donationPercent;
    @c("enable")
    private DonationStatus donationStatus;
    @c("status")
    private boolean isPaymentDonated;
    @c("jiring")
    private double jiringPayableAmountWithDonation;
    @c("organization_id")
    private int organizationId;

    public int describeContents() {
        return 0;
    }

    public Donation() {
    }

    protected Donation(Parcel parcel) {
        this.isPaymentDonated = parcel.readByte() != 0;
        this.donationStatus = (DonationStatus) parcel.readParcelable(DonationStatus.class.getClassLoader());
        this.donationPercent = parcel.readDouble();
        this.donationLink = parcel.readString();
        this.donationDesc = parcel.readString();
        this.donationAmount = parcel.readDouble();
        this.campaignText = parcel.readString();
        this.organizationId = parcel.readInt();
        this.jiringPayableAmountWithDonation = parcel.readDouble();
    }

    public boolean isPaymentDonated() {
        return this.isPaymentDonated;
    }

    public void setPaymentDonated(boolean z) {
        this.isPaymentDonated = z;
    }

    public DonationStatus getDonationStatus() {
        return this.donationStatus;
    }

    public void setDonationStatus(DonationStatus donationStatus2) {
        this.donationStatus = donationStatus2;
    }

    public double getDonationPercent() {
        return this.donationPercent;
    }

    public void setDonationPercent(double d) {
        this.donationPercent = d;
    }

    public String getDonationLink() {
        return this.donationLink;
    }

    public void setDonationLink(String str) {
        this.donationLink = str;
    }

    public String getDonationDesc() {
        return this.donationDesc;
    }

    public void setDonationDesc(String str) {
        this.donationDesc = str;
    }

    public double getDonationAmount() {
        return this.donationAmount;
    }

    public void setDonationAmount(double d) {
        this.donationAmount = d;
    }

    public String getCampaignText() {
        return this.campaignText;
    }

    public void setCampaignText(String str) {
        this.campaignText = str;
    }

    public int getOrganizationId() {
        return this.organizationId;
    }

    public void setOrganizationId(int i) {
        this.organizationId = i;
    }

    public double getJiringPayableAmountWithDonation() {
        return this.jiringPayableAmountWithDonation;
    }

    public void setJiringPayableAmountWithDonation(double d) {
        this.jiringPayableAmountWithDonation = d;
    }

    public String toString() {
        return "Donation{isPaymentDonated=" + this.isPaymentDonated + ", donationStatus=" + this.donationStatus + ", donationPercent=" + this.donationPercent + ", donationLink='" + this.donationLink + '\'' + ", donationDesc='" + this.donationDesc + '\'' + ", donationAmount=" + this.donationAmount + ", campaignText='" + this.campaignText + '\'' + ", organizationId=" + this.organizationId + ", jiringPayableAmountWithDonation=" + this.jiringPayableAmountWithDonation + '}';
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.isPaymentDonated ? (byte) 1 : 0);
        parcel.writeParcelable(this.donationStatus, i);
        parcel.writeDouble(this.donationPercent);
        parcel.writeString(this.donationLink);
        parcel.writeString(this.donationDesc);
        parcel.writeDouble(this.donationAmount);
        parcel.writeString(this.campaignText);
        parcel.writeInt(this.organizationId);
        parcel.writeDouble(this.jiringPayableAmountWithDonation);
    }
}
