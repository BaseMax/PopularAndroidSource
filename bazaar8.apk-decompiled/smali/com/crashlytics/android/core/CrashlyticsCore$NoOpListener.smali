.class public final Lcom/crashlytics/android/core/CrashlyticsCore$NoOpListener;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Lcom/crashlytics/android/core/CrashlyticsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashlyticsCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOpListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/crashlytics/android/core/CrashlyticsCore$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsCore$NoOpListener;-><init>()V

    return-void
.end method


# virtual methods
.method public crashlyticsDidDetectCrashDuringPreviousExecution()V
    .locals 0

    return-void
.end method
