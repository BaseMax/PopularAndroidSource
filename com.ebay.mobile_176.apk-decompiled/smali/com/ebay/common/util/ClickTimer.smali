.class public Lcom/ebay/common/util/ClickTimer;
.super Ljava/lang/Object;
.source "ClickTimer.java"


# instance fields
.field private lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/ebay/common/util/ClickTimer;->lastClickTime:J

    .line 19
    iput-wide v0, p0, Lcom/ebay/common/util/ClickTimer;->lastClickTime:J

    return-void
.end method


# virtual methods
.method public enoughTimeHasElapsedBetweenClicks(JZ)Z
    .locals 4

    if-eqz p3, :cond_1

    .line 42
    iget-wide v0, p0, Lcom/ebay/common/util/ClickTimer;->lastClickTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1f4

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 45
    :cond_0
    iput-wide p1, p0, Lcom/ebay/common/util/ClickTimer;->lastClickTime:J

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public setLastClickTime(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/ebay/common/util/ClickTimer;->lastClickTime:J

    return-void
.end method
