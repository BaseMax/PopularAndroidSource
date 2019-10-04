.class public Lcab/snapp/passenger/data_access_layer/network/requests/ApWalletRegistrationRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private cellphone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "cellphone"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellPhone()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/ApWalletRegistrationRequest;->cellphone:Ljava/lang/String;

    return-object v0
.end method

.method public setCellPhone(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/ApWalletRegistrationRequest;->cellphone:Ljava/lang/String;

    return-void
.end method
