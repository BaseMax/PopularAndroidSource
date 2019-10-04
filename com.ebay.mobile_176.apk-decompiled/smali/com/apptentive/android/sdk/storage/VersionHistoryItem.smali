.class public Lcom/apptentive/android/sdk/storage/VersionHistoryItem;
.super Ljava/lang/Object;
.source "VersionHistoryItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private timestamp:D

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(DILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/apptentive/android/sdk/storage/VersionHistoryItem;->timestamp:D

    .line 19
    iput p3, p0, Lcom/apptentive/android/sdk/storage/VersionHistoryItem;->versionCode:I

    .line 20
    iput-object p4, p0, Lcom/apptentive/android/sdk/storage/VersionHistoryItem;->versionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTimestamp()D
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/apptentive/android/sdk/storage/VersionHistoryItem;->timestamp:D

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/apptentive/android/sdk/storage/VersionHistoryItem;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/VersionHistoryItem;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setTimestamp(D)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/apptentive/android/sdk/storage/VersionHistoryItem;->timestamp:D

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/apptentive/android/sdk/storage/VersionHistoryItem;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/VersionHistoryItem;->versionName:Ljava/lang/String;

    return-void
.end method
