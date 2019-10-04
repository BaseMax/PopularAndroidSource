.class public Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# static fields
.field public static final AP_WALLET:I = 0x2

.field public static final AP_WALLET_ERROR_REGISTRATION:I = 0x2

.field public static final AP_WALLET_NOT_REGISTERED:I = 0x0

.field public static final AP_WALLET_REGISTERED:I = 0x1

.field public static final AP_WALLET_UNDONE:I = 0x3

.field public static final SNAPP_WALLET:I = 0x1


# instance fields
.field private apAuthorized:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "ap_authorized"
    .end annotation
.end field

.field private apCredit:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ap_balance"
    .end annotation
.end field

.field private defaultWallet:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "default"
    .end annotation
.end field

.field private snappCredit:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "balance"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getApCredit()Ljava/lang/Long;
    .locals 1

    .line 42
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->apCredit:Ljava/lang/Long;

    return-object v0
.end method

.method public getApWalletRegistrationStatus()I
    .locals 1

    .line 66
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->apAuthorized:I

    return v0
.end method

.method public getCredit()J
    .locals 2

    .line 52
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->defaultWallet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->snappCredit:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->apCredit:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDefaultWallet()I
    .locals 1

    .line 57
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->defaultWallet:I

    return v0
.end method

.method public getSnappCredit()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->snappCredit:J

    return-wide v0
.end method

.method public setApCredit(Ljava/lang/Long;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->apCredit:Ljava/lang/Long;

    return-void
.end method

.method public setApWalletRegistrationStatus(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->apAuthorized:I

    return-void
.end method

.method public setDefaultWallet(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->defaultWallet:I

    return-void
.end method

.method public setSnappCredit(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->snappCredit:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CreditResponse{credit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->snappCredit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
