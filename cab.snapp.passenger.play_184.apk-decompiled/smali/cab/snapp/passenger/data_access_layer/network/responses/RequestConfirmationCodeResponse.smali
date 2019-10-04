.class public Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "status"
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
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;->status:Ljava/lang/String;

    return-void
.end method
