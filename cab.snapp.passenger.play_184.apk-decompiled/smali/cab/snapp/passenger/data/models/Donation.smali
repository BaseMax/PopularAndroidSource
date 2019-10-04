.class public Lcab/snapp/passenger/data/models/Donation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/Donation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private campaignText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "campaign_text"
    .end annotation
.end field

.field private donationAmount:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "amount"
    .end annotation
.end field

.field private donationDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "desc"
    .end annotation
.end field

.field private donationLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "link"
    .end annotation
.end field

.field private donationPercent:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "percent"
    .end annotation
.end field

.field private donationStatus:Lcab/snapp/passenger/data/models/DonationStatus;
    .annotation runtime Lcom/google/gson/a/c;
        value = "enable"
    .end annotation
.end field

.field private isPaymentDonated:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "status"
    .end annotation
.end field

.field private jiringPayableAmountWithDonation:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "jiring"
    .end annotation
.end field

.field private organizationId:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "organization_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcab/snapp/passenger/data/models/Donation$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/Donation$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/Donation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/Donation;->isPaymentDonated:Z

    .line 54
    const-class v0, Lcab/snapp/passenger/data/models/DonationStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/DonationStatus;

    iput-object v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationStatus:Lcab/snapp/passenger/data/models/DonationStatus;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationPercent:D

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationLink:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationDesc:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationAmount:D

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/Donation;->campaignText:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/data/models/Donation;->organizationId:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/Donation;->jiringPayableAmountWithDonation:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCampaignText()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Donation;->campaignText:Ljava/lang/String;

    return-object v0
.end method

.method public getDonationAmount()D
    .locals 2

    .line 116
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationAmount:D

    return-wide v0
.end method

.method public getDonationDesc()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDonationLink()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationLink:Ljava/lang/String;

    return-object v0
.end method

.method public getDonationPercent()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationPercent:D

    return-wide v0
.end method

.method public getDonationStatus()Lcab/snapp/passenger/data/models/DonationStatus;
    .locals 1

    .line 76
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationStatus:Lcab/snapp/passenger/data/models/DonationStatus;

    return-object v0
.end method

.method public getJiringPayableAmountWithDonation()D
    .locals 2

    .line 146
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Donation;->jiringPayableAmountWithDonation:D

    return-wide v0
.end method

.method public getOrganizationId()I
    .locals 1

    .line 136
    iget v0, p0, Lcab/snapp/passenger/data/models/Donation;->organizationId:I

    return v0
.end method

.method public isPaymentDonated()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/Donation;->isPaymentDonated:Z

    return v0
.end method

.method public setCampaignText(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Donation;->campaignText:Ljava/lang/String;

    return-void
.end method

.method public setDonationAmount(D)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/Donation;->donationAmount:D

    return-void
.end method

.method public setDonationDesc(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Donation;->donationDesc:Ljava/lang/String;

    return-void
.end method

.method public setDonationLink(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Donation;->donationLink:Ljava/lang/String;

    return-void
.end method

.method public setDonationPercent(D)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/Donation;->donationPercent:D

    return-void
.end method

.method public setDonationStatus(Lcab/snapp/passenger/data/models/DonationStatus;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Donation;->donationStatus:Lcab/snapp/passenger/data/models/DonationStatus;

    return-void
.end method

.method public setJiringPayableAmountWithDonation(D)V
    .locals 0

    .line 151
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/Donation;->jiringPayableAmountWithDonation:D

    return-void
.end method

.method public setOrganizationId(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcab/snapp/passenger/data/models/Donation;->organizationId:I

    return-void
.end method

.method public setPaymentDonated(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/Donation;->isPaymentDonated:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Donation{isPaymentDonated="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcab/snapp/passenger/data/models/Donation;->isPaymentDonated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", donationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data/models/Donation;->donationStatus:Lcab/snapp/passenger/data/models/DonationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", donationPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/passenger/data/models/Donation;->donationPercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", donationLink=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data/models/Donation;->donationLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", donationDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/Donation;->donationDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", donationAmount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcab/snapp/passenger/data/models/Donation;->donationAmount:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", campaignText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/Donation;->campaignText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", organizationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data/models/Donation;->organizationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jiringPayableAmountWithDonation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/passenger/data/models/Donation;->jiringPayableAmountWithDonation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 179
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/Donation;->isPaymentDonated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 180
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationStatus:Lcab/snapp/passenger/data/models/DonationStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 181
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationPercent:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 182
    iget-object p2, p0, Lcab/snapp/passenger/data/models/Donation;->donationLink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lcab/snapp/passenger/data/models/Donation;->donationDesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Donation;->donationAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 185
    iget-object p2, p0, Lcab/snapp/passenger/data/models/Donation;->campaignText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget p2, p0, Lcab/snapp/passenger/data/models/Donation;->organizationId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Donation;->jiringPayableAmountWithDonation:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
