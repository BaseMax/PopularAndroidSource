.class public Lf/a/a/g/d/b/f;
.super Ljava/lang/Object;
.source "PullerManager.java"


# instance fields
.field public a:Lf/a/a/e/g;

.field public b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lir/cafebazaar/inline/ux/flow/pull/Puller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/g/d/b/f;->a:Lf/a/a/e/g;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/a/a/g/d/b/f;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/b/f;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lir/cafebazaar/inline/ux/flow/pull/Puller;

    .line 2
    iget-object v2, p0, Lf/a/a/g/d/b/f;->a:Lf/a/a/e/g;

    invoke-virtual {v1, v2}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Lf/a/a/e/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lir/cafebazaar/inline/ux/flow/pull/Puller;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lf/a/a/g/d/b/f;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/b/f;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lir/cafebazaar/inline/ux/flow/pull/Puller;

    .line 2
    invoke-virtual {v1}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
