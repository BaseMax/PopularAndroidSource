.class public Lcom/apptentive/android/sdk/model/TimeExtendedData;
.super Lcom/apptentive/android/sdk/model/ExtendedData;
.source "TimeExtendedData.java"


# static fields
.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final VERSION:I = 0x1


# instance fields
.field private timestamp:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/apptentive/android/sdk/model/ExtendedData;-><init>()V

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/TimeExtendedData;->setTimestamp(J)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/apptentive/android/sdk/model/ExtendedData;-><init>()V

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/model/TimeExtendedData;->setTimestamp(D)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/apptentive/android/sdk/model/ExtendedData;-><init>()V

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/model/TimeExtendedData;->setTimestamp(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/model/ExtendedData;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "timestamp"

    .line 36
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/TimeExtendedData;->setTimestamp(D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/apptentive/android/sdk/model/ExtendedData;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/model/TimeExtendedData;->setTimestamp(Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 24
    sget-object v0, Lcom/apptentive/android/sdk/model/ExtendedData$Type;->time:Lcom/apptentive/android/sdk/model/ExtendedData$Type;

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/TimeExtendedData;->setType(Lcom/apptentive/android/sdk/model/ExtendedData$Type;)V

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/TimeExtendedData;->setVersion(I)V

    return-void
.end method

.method protected setTimestamp(D)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/apptentive/android/sdk/model/TimeExtendedData;->timestamp:D

    return-void
.end method

.method protected setTimestamp(J)V
    .locals 2

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/model/TimeExtendedData;->setTimestamp(D)V

    return-void
.end method

.method protected setTimestamp(Ljava/util/Date;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/TimeExtendedData;->setTimestamp(J)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/TimeExtendedData;->setTimestamp(J)V

    :goto_0
    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 72
    invoke-super {p0}, Lcom/apptentive/android/sdk/model/ExtendedData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    .line 73
    iget-wide v2, p0, Lcom/apptentive/android/sdk/model/TimeExtendedData;->timestamp:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method
