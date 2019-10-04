.class public Lcab/snapp/passenger/data_access_layer/network/requests/VoucherRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private voucherCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "voucher_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/VoucherRequest;->voucherCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVoucherCode()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/VoucherRequest;->voucherCode:Ljava/lang/String;

    return-object v0
.end method

.method public setVoucherCode(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/VoucherRequest;->voucherCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VoucherRequest{voucherCode=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/VoucherRequest;->voucherCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
