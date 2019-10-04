.class public Lcom/adjust/sdk/ResponseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public activityKind:Lcom/adjust/sdk/ActivityKind;

.field public adid:Ljava/lang/String;

.field public attribution:Lcom/adjust/sdk/AdjustAttribution;

.field public jsonResponse:Lorg/a/c;

.field public message:Ljava/lang/String;

.field public success:Z

.field public timestamp:Ljava/lang/String;

.field public willRetry:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityPackage;->getActivityKind()Lcom/adjust/sdk/ActivityKind;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/adjust/sdk/ResponseData$1;->a:[I

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 39
    new-instance p0, Lcom/adjust/sdk/ResponseData;

    invoke-direct {p0}, Lcom/adjust/sdk/ResponseData;-><init>()V

    goto :goto_0

    .line 36
    :cond_0
    new-instance v1, Lcom/adjust/sdk/EventResponseData;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/EventResponseData;-><init>(Lcom/adjust/sdk/ActivityPackage;)V

    move-object p0, v1

    goto :goto_0

    .line 33
    :cond_1
    new-instance p0, Lcom/adjust/sdk/AttributionResponseData;

    invoke-direct {p0}, Lcom/adjust/sdk/AttributionResponseData;-><init>()V

    goto :goto_0

    .line 30
    :cond_2
    new-instance p0, Lcom/adjust/sdk/SdkClickResponseData;

    invoke-direct {p0}, Lcom/adjust/sdk/SdkClickResponseData;-><init>()V

    goto :goto_0

    .line 27
    :cond_3
    new-instance p0, Lcom/adjust/sdk/SessionResponseData;

    invoke-direct {p0}, Lcom/adjust/sdk/SessionResponseData;-><init>()V

    .line 43
    :goto_0
    iput-object v0, p0, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/a/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "message:%s timestamp:%s json:%s"

    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
