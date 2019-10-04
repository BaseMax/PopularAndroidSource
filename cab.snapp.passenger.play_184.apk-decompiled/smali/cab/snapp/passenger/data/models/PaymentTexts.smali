.class public Lcab/snapp/passenger/data/models/PaymentTexts;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private apWalletTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ap_wallet_title"
    .end annotation
.end field

.field private appWalletRegistrationContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ap_wallet_content"
    .end annotation
.end field

.field private appWalletRegistrationLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ap_wallet_link"
    .end annotation
.end field

.field private onlinePaymentTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "online_payment_title"
    .end annotation
.end field

.field private snappCardTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "snapp_card_title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApWalletTitle()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->apWalletTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAppWalletRegistrationContent()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->appWalletRegistrationContent:Ljava/lang/String;

    return-object v0
.end method

.method public getAppWalletRegistrationLink()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->appWalletRegistrationLink:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlinePaymentTitle()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->onlinePaymentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSnappCardTitle()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->snappCardTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setApWalletTitle(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->apWalletTitle:Ljava/lang/String;

    return-void
.end method

.method public setOnlinePaymentTitle(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->onlinePaymentTitle:Ljava/lang/String;

    return-void
.end method

.method public setSnappCardTitle(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->snappCardTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentTexts{onlinePaymentTitle=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->onlinePaymentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apWalletTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->apWalletTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", snappCardTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->snappCardTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appWalletRegistrationContent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->appWalletRegistrationContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appWalletRegistrationLink=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/PaymentTexts;->appWalletRegistrationLink:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
