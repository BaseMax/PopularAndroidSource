.class public Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;
.super Ljava/lang/Object;
.source "ApptentiveHttpResponse.java"


# instance fields
.field private badPayload:Z

.field private code:I

.field private content:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->content:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->reason:Ljava/lang/String;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->code:I

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->badPayload:Z

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->code:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public isBadPayload()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->badPayload:Z

    return v0
.end method

.method public isException()Z
    .locals 1

    .line 29
    iget v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->code:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRejectedPermanently()Z
    .locals 2

    .line 37
    iget v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->code:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->code:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRejectedTemporarily()Z
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->isRejectedPermanently()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccessful()Z
    .locals 2

    .line 33
    iget v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZipped()Z
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->headers:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->headers:Ljava/util/Map;

    const-string v2, "Content-Encoding"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "[gzip]"

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public setBadPayload(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->badPayload:Z

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->code:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->content:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->headers:Ljava/util/Map;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->reason:Ljava/lang/String;

    return-void
.end method
