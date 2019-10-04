.class public Lcab/snapp/passenger/data_access_layer/network/requests/AsanPardakhtPaymentRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private amount:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "amount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    .line 18
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/AsanPardakhtPaymentRequest;->amount:D

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 23
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/AsanPardakhtPaymentRequest;->amount:D

    return-wide v0
.end method

.method public setAmount(D)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/AsanPardakhtPaymentRequest;->amount:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsanPardakhtPaymentRequest{amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/AsanPardakhtPaymentRequest;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
