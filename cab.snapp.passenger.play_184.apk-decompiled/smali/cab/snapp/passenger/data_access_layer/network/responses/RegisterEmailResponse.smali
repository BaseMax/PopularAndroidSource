.class public Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
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

    .line 13
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;->message:Ljava/lang/String;

    return-void
.end method
