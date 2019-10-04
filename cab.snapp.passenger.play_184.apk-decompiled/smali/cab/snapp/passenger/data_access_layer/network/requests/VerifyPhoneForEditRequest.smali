.class public Lcab/snapp/passenger/data_access_layer/network/requests/VerifyPhoneForEditRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "code"
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
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/VerifyPhoneForEditRequest;->code:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/VerifyPhoneForEditRequest;->code:Ljava/lang/String;

    return-void
.end method
