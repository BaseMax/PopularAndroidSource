.class public final Lcom/crashlytics/android/core/ReportUploader$AlwaysSendCheck;
.super Ljava/lang/Object;
.source "ReportUploader.java"

# interfaces
.implements Lcom/crashlytics/android/core/ReportUploader$SendCheck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ReportUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AlwaysSendCheck"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSendReports()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
