.class public abstract Lcom/mapbox/android/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Landroid/view/WindowManager;

.field protected c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final d:Lcom/mapbox/android/b/a;

.field private e:Landroid/view/MotionEvent;

.field private f:Landroid/view/MotionEvent;

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/mapbox/android/b/b;->h:Z

    .line 31
    iput-object p1, p0, Lcom/mapbox/android/b/b;->a:Landroid/content/Context;

    const-string v0, "window"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/mapbox/android/b/b;->b:Landroid/view/WindowManager;

    .line 33
    iput-object p2, p0, Lcom/mapbox/android/b/b;->d:Lcom/mapbox/android/b/a;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/mapbox/android/b/b;->c:Ljava/lang/Object;

    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/mapbox/android/b/b;->c:Ljava/lang/Object;

    return-void
.end method

.method protected a(I)Z
    .locals 8

    .line 65
    iget-object v0, p0, Lcom/mapbox/android/b/b;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mapbox/android/b/b;->h:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/b/b;->d:Lcom/mapbox/android/b/a;

    invoke-virtual {v0}, Lcom/mapbox/android/b/a;->getMutuallyExclusiveGestures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 72
    iget-object v4, p0, Lcom/mapbox/android/b/b;->d:Lcom/mapbox/android/b/a;

    invoke-virtual {v4}, Lcom/mapbox/android/b/a;->getDetectors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mapbox/android/b/b;

    .line 73
    instance-of v6, v5, Lcom/mapbox/android/b/j;

    if-eqz v6, :cond_3

    .line 74
    check-cast v5, Lcom/mapbox/android/b/j;

    .line 1092
    iget-object v6, v5, Lcom/mapbox/android/b/j;->h:Ljava/util/Set;

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 76
    invoke-virtual {v5}, Lcom/mapbox/android/b/j;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_3

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method final a(Landroid/view/MotionEvent;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/b/b;->f:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 47
    iput-object v1, p0, Lcom/mapbox/android/b/b;->f:Landroid/view/MotionEvent;

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/mapbox/android/b/b;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 51
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/b/b;->f:Landroid/view/MotionEvent;

    .line 52
    iget-object v0, p0, Lcom/mapbox/android/b/b;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 53
    iput-object v1, p0, Lcom/mapbox/android/b/b;->e:Landroid/view/MotionEvent;

    .line 56
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/b/b;->e:Landroid/view/MotionEvent;

    .line 57
    iget-object v0, p0, Lcom/mapbox/android/b/b;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mapbox/android/b/b;->e:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mapbox/android/b/b;->g:J

    .line 59
    invoke-virtual {p0, p1}, Lcom/mapbox/android/b/b;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected abstract b(Landroid/view/MotionEvent;)Z
.end method

.method public getCurrentEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/mapbox/android/b/b;->e:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getGestureDuration()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/mapbox/android/b/b;->g:J

    return-wide v0
.end method

.method public getPreviousEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/mapbox/android/b/b;->f:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/mapbox/android/b/b;->h:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/mapbox/android/b/b;->h:Z

    return-void
.end method
