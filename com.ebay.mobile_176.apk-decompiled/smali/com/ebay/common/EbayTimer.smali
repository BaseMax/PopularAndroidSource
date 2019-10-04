.class public Lcom/ebay/common/EbayTimer;
.super Landroid/os/Handler;
.source "EbayTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/EbayTimer$OnTimerEvent;
    }
.end annotation


# instance fields
.field private final delayMs:J

.field private notifyOnStart:Z

.field private onTimerEvent:Lcom/ebay/common/EbayTimer$OnTimerEvent;

.field private timerRunning:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ebay/common/EbayTimer;->timerRunning:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/ebay/common/EbayTimer;->notifyOnStart:Z

    .line 14
    iput-wide p1, p0, Lcom/ebay/common/EbayTimer;->delayMs:J

    return-void
.end method


# virtual methods
.method public isTimerRunning()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/ebay/common/EbayTimer;->timerRunning:Z

    return v0
.end method

.method public run()V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/ebay/common/EbayTimer;->timerRunning:Z

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/ebay/common/EbayTimer;->onTimerEvent:Lcom/ebay/common/EbayTimer$OnTimerEvent;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ebay/common/EbayTimer;->onTimerEvent:Lcom/ebay/common/EbayTimer$OnTimerEvent;

    invoke-interface {v0}, Lcom/ebay/common/EbayTimer$OnTimerEvent;->OnTimer()V

    .line 64
    :cond_0
    iget-wide v0, p0, Lcom/ebay/common/EbayTimer;->delayMs:J

    invoke-virtual {p0, p0, v0, v1}, Lcom/ebay/common/EbayTimer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public setNotifyOnStart(Z)Lcom/ebay/common/EbayTimer;
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/ebay/common/EbayTimer;->notifyOnStart:Z

    return-object p0
.end method

.method public final setOnTimerEvent(Lcom/ebay/common/EbayTimer$OnTimerEvent;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ebay/common/EbayTimer;->onTimerEvent:Lcom/ebay/common/EbayTimer$OnTimerEvent;

    return-void
.end method

.method public final start()V
    .locals 2

    .line 41
    iget-boolean v0, p0, Lcom/ebay/common/EbayTimer;->timerRunning:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/ebay/common/EbayTimer;->timerRunning:Z

    .line 44
    iget-boolean v0, p0, Lcom/ebay/common/EbayTimer;->notifyOnStart:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p0}, Lcom/ebay/common/EbayTimer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 47
    :cond_0
    iget-wide v0, p0, Lcom/ebay/common/EbayTimer;->delayMs:J

    invoke-virtual {p0, p0, v0, v1}, Lcom/ebay/common/EbayTimer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/ebay/common/EbayTimer;->timerRunning:Z

    .line 54
    invoke-virtual {p0, p0}, Lcom/ebay/common/EbayTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
