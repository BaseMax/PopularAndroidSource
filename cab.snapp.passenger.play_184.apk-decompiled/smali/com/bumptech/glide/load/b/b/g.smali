.class public final Lcom/bumptech/glide/load/b/b/g;
.super Lcom/bumptech/glide/g/g;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/g/g<",
        "Lcom/bumptech/glide/load/d;",
        "Lcom/bumptech/glide/load/b/v<",
        "*>;>;",
        "Lcom/bumptech/glide/load/b/b/h;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/b/b/h$a;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/g/g;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getSize(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/bumptech/glide/load/b/v;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1040
    invoke-super {p0, p1}, Lcom/bumptech/glide/g/g;->getSize(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 1042
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/v;->getSize()I

    move-result p1

    return p1
.end method

.method public final synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/bumptech/glide/load/b/v;

    .line 1032
    iget-object p1, p0, Lcom/bumptech/glide/load/b/b/g;->a:Lcom/bumptech/glide/load/b/b/h$a;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1033
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/b/b/h$a;->onResourceRemoved(Lcom/bumptech/glide/load/b/v;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic put(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/v;)Lcom/bumptech/glide/load/b/v;
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/g/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/v;

    return-object p1
.end method

.method public final bridge synthetic remove(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/load/b/v;
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/bumptech/glide/g/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/v;

    return-object p1
.end method

.method public final setResourceRemovedListener(Lcom/bumptech/glide/load/b/b/h$a;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/g;->a:Lcom/bumptech/glide/load/b/b/h$a;

    return-void
.end method

.method public final trimMemory(I)V
    .locals 4

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/b/g;->clearMemory()V

    return-void

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/b/g;->getMaxSize()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/b/b/g;->a(J)V

    :cond_2
    return-void
.end method
