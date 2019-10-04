.class public Lcab/snapp/passenger/data_access_layer/network/requests/VerificationCodeForEditPhoneNumberRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private cellphone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "cellphone"
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "phone"
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
.method public getCellphone()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/VerificationCodeForEditPhoneNumberRequest;->cellphone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/VerificationCodeForEditPhoneNumberRequest;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public setCellphone(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/VerificationCodeForEditPhoneNumberRequest;->cellphone:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/VerificationCodeForEditPhoneNumberRequest;->phone:Ljava/lang/String;

    return-void
.end method
