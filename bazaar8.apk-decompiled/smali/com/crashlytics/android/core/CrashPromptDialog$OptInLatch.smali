.class public Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptInLatch"
.end annotation


# instance fields
.field public final latch:Ljava/util/concurrent/CountDownLatch;

.field public send:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->send:Z

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;-><init>()V

    return-void
.end method


# virtual methods
.method public await()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getOptIn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->send:Z

    return v0
.end method

.method public setOptIn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->send:Z

    .line 2
    iget-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
