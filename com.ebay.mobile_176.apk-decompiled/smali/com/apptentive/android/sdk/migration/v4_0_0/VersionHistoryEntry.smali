.class public Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;
.super Lorg/json/JSONObject;
.source "VersionHistoryEntry.java"


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->setVersionCode(Ljava/lang/Integer;)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->setVersionName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p3}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->setTimestamp(Ljava/lang/Double;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTimestamp()Ljava/lang/Double;
    .locals 1

    const-string/jumbo v0, "timestamp"

    .line 49
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    const-string/jumbo v0, "versionCode"

    .line 33
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "versionName"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTimestamp(Ljava/lang/Double;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "timestamp"

    .line 53
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public setVersionCode(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "versionCode"

    .line 37
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "versionName"

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
