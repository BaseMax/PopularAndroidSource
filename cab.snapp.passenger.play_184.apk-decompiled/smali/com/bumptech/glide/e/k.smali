.class public final Lcom/bumptech/glide/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/d;
.implements Lcom/bumptech/glide/e/e;


# instance fields
.field private final a:Lcom/bumptech/glide/e/e;

.field private b:Lcom/bumptech/glide/e/d;

.field private c:Lcom/bumptech/glide/e/d;

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/k;-><init>(Lcom/bumptech/glide/e/e;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/e/e;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

    return-void
.end method


# virtual methods
.method public final begin()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/bumptech/glide/e/k;->d:Z

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->begin()V

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/e/k;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->begin()V

    :cond_1
    return-void
.end method

.method public final canNotifyCleared(Lcom/bumptech/glide/e/d;)Z
    .locals 3

    .line 2064
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

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

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final canNotifyStatusChanged(Lcom/bumptech/glide/e/d;)Z
    .locals 3

    .line 1068
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

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

    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bumptech/glide/e/k;->isAnyResourceSet()Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final canSetImage(Lcom/bumptech/glide/e/d;)Z
    .locals 3

    .line 1044
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

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
    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {p1}, Lcom/bumptech/glide/e/d;->isResourceSet()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/bumptech/glide/e/k;->d:Z

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->clear()V

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->clear()V

    return-void
.end method

.method public final isAnyResourceSet()Z
    .locals 3

    .line 2104
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

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

    .line 73
    invoke-virtual {p0}, Lcom/bumptech/glide/e/k;->isResourceSet()Z

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

    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isCleared()Z

    move-result v0

    return v0
.end method

.method public final isComplete()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isEquivalentTo(Lcom/bumptech/glide/e/d;)Z
    .locals 3

    .line 172
    instance-of v0, p1, Lcom/bumptech/glide/e/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 173
    check-cast p1, Lcom/bumptech/glide/e/k;

    .line 174
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/e/d;->isEquivalentTo(Lcom/bumptech/glide/e/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    iget-object p1, p1, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    goto :goto_1

    .line 175
    :cond_1
    invoke-interface {v0, p1}, Lcom/bumptech/glide/e/d;->isEquivalentTo(Lcom/bumptech/glide/e/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final isFailed()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isFailed()Z

    move-result v0

    return v0
.end method

.method public final isResourceSet()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isResourceSet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isResourceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final onRequestFailed(Lcom/bumptech/glide/e/d;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

    if-eqz p1, :cond_1

    .line 99
    invoke-interface {p1, p0}, Lcom/bumptech/glide/e/e;->onRequestFailed(Lcom/bumptech/glide/e/d;)V

    :cond_1
    return-void
.end method

.method public final onRequestSuccess(Lcom/bumptech/glide/e/d;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1, p0}, Lcom/bumptech/glide/e/e;->onRequestSuccess(Lcom/bumptech/glide/e/d;)V

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {p1}, Lcom/bumptech/glide/e/d;->isComplete()Z

    move-result p1

    if-nez p1, :cond_2

    .line 88
    iget-object p1, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {p1}, Lcom/bumptech/glide/e/d;->clear()V

    :cond_2
    return-void
.end method

.method public final recycle()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->recycle()V

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->recycle()V

    return-void
.end method

.method public final setRequests(Lcom/bumptech/glide/e/d;Lcom/bumptech/glide/e/d;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/e/k;->b:Lcom/bumptech/glide/e/d;

    .line 29
    iput-object p2, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    return-void
.end method
