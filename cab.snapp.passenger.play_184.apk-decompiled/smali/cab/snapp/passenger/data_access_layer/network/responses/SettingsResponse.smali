.class public Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private defaultWallet:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "default_wallet"
    .end annotation
.end field

.field private newsletter:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "passenger_newsletter_emails"
    .end annotation
.end field

.field private numberMasking:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "passenger_number_masking"
    .end annotation
.end field

.field private privacySetting:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "privacy_setting"
    .end annotation
.end field

.field private rideEmails:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "passenger_ride_emails"
    .end annotation
.end field

.field private rideSMS:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "passenger_ride_sms"
    .end annotation
.end field

.field private transactionSMS:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "passenger_transaction_sms"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultWallet()I
    .locals 1

    .line 89
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->defaultWallet:I

    return v0
.end method

.method public getNewsletter()I
    .locals 1

    .line 31
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->newsletter:I

    return v0
.end method

.method public getNumberMasking()I
    .locals 1

    .line 71
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->numberMasking:I

    return v0
.end method

.method public getPrivacySetting()I
    .locals 1

    .line 81
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->privacySetting:I

    return v0
.end method

.method public getRideEmails()I
    .locals 1

    .line 41
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->rideEmails:I

    return v0
.end method

.method public getRideSMS()I
    .locals 1

    .line 51
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->rideSMS:I

    return v0
.end method

.method public getTransactionSMS()I
    .locals 1

    .line 61
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->transactionSMS:I

    return v0
.end method

.method public setDefaultWallet(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->defaultWallet:I

    return-void
.end method

.method public setNewsletter(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->newsletter:I

    return-void
.end method

.method public setNumberMasking(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->numberMasking:I

    return-void
.end method

.method public setPrivacySetting(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->privacySetting:I

    return-void
.end method

.method public setRideEmails(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->rideEmails:I

    return-void
.end method

.method public setRideSMS(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->rideSMS:I

    return-void
.end method

.method public setTransactionSMS(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->transactionSMS:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SettingsResponse{newsletter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->newsletter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rideEmails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->rideEmails:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rideSMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->rideSMS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transactionSMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->transactionSMS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberMasking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->numberMasking:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", privacySetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->privacySetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultWallet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->defaultWallet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
