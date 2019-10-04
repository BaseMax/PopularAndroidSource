.class final Lcom/apptentive/android/sdk/debug/LogMonitor$4;
.super Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault;
.source "LogMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/debug/LogMonitor;->createVerityRequestRetryPolicy()Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRetryRequest(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
