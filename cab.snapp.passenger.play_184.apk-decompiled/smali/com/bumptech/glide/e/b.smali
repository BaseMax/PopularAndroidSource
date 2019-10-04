.class public final Lcom/bumptech/glide/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/d;
.implements Lcom/bumptech/glide/e/e;


# instance fields
.field private final a:Lcom/bumptech/glide/e/e;

.field private b:Lcom/bumptech/glide/e/d;

.field private c:Lcom/bumptech/glide/e/d;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/e/e;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/e/b;->a:Lcom/bumptech/glide/e/e;

    return-void
.end method

.method private a(Lcom/bumptech/glide/e/d;)Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final begin()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->begin()V

    :cond_0
    return-void
.end method

.method public final canNotifyCleared(Lcom/bumptech/glide/e/d;)Z
    .locals 3

    .line 2103
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Lcom/bumptech/glide/e/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/e/e;->canNotifyCleared(Lcom/bumptech/glide/e/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 99
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/b;->a(Lcom/bumptech/glide/e/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final canNotifyStatusChanged(Lcom/bumptech/glide/e/d;)Z
    .locals 3

    .line 1107
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Lcom/bumptech/glide/e/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/e/e;->canNotifyStatusChanged(Lcom/bumptech/glide/e/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 94
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/b;->a(Lcom/bumptech/glide/e/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final canSetImage(Lcom/bumptech/glide/e/d;)Z
    .locals 3

    .line 1089
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Lcom/bumptech/glide/e/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/e/e;->canSetImage(Lcom/bumptech/glide/e/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 85
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/b;->a(Lcom/bumptech/glide/e/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final clear()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->clear()V

    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->clear()V

    :cond_0
    return-void
.end method

.method public final isAnyResourceSet()Z
    .locals 3

    .line 2120
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Lcom/bumptech/glide/e/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/e/e;->isAnyResourceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/bumptech/glide/e/b;->isResourceSet()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final isCleared()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    :goto_0
    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isCleared()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    goto :goto_0
.end method

.method public final isComplete()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    :goto_0
    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isComplete()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    goto :goto_0
.end method

.method public final isEquivalentTo(Lcom/bumptech/glide/e/d;)Z
    .locals 3

    .line 76
    instance-of v0, p1, Lcom/bumptech/glide/e/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Lcom/bumptech/glide/e/b;

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    iget-object v2, p1, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/e/d;->isEquivalentTo(Lcom/bumptech/glide/e/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    iget-object p1, p1, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/e/d;->isEquivalentTo(Lcom/bumptech/glide/e/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final isFailed()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isResourceSet()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    :goto_0
    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isResourceSet()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    goto :goto_0
.end method

.method public final isRunning()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    :goto_0
    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    goto :goto_0
.end method

.method public final onRequestFailed(Lcom/bumptech/glide/e/d;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {p1}, Lcom/bumptech/glide/e/d;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {p1}, Lcom/bumptech/glide/e/d;->begin()V

    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/e/b;->a:Lcom/bumptech/glide/e/e;

    if-eqz p1, :cond_2

    .line 140
    invoke-interface {p1, p0}, Lcom/bumptech/glide/e/e;->onRequestFailed(Lcom/bumptech/glide/e/d;)V

    :cond_2
    return-void
.end method

.method public final onRequestSuccess(Lcom/bumptech/glide/e/d;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/bumptech/glide/e/b;->a:Lcom/bumptech/glide/e/e;

    if-eqz p1, :cond_0

    .line 126
    invoke-interface {p1, p0}, Lcom/bumptech/glide/e/e;->onRequestSuccess(Lcom/bumptech/glide/e/d;)V

    :cond_0
    return-void
.end method

.method public final recycle()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->recycle()V

    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->recycle()V

    return-void
.end method

.method public final setRequests(Lcom/bumptech/glide/e/d;Lcom/bumptech/glide/e/d;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/d;

    .line 23
    iput-object p2, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    return-void
.end method
