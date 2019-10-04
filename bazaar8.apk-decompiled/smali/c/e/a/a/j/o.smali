.class public abstract Lc/e/a/a/j/o;
.super Lc/e/a/a/j/m;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/o$a;,
        Lc/e/a/a/j/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/e/a/a/j/m;"
    }
.end annotation


# instance fields
.field public final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lc/e/a/a/j/o$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/os/Handler;

.field public h:Lc/e/a/a/n/A;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/a/j/m;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/e/a/a/j/o;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    return p2
.end method

.method public a(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    return-wide p2
.end method

.method public abstract a(Ljava/lang/Object;Lc/e/a/a/j/v$a;)Lc/e/a/a/j/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/e/a/a/j/v$a;",
            ")",
            "Lc/e/a/a/j/v$a;"
        }
    .end annotation
.end method

.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/o;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/o$b;

    .line 4
    iget-object v1, v1, Lc/e/a/a/j/o$b;->a:Lc/e/a/a/j/v;

    invoke-interface {v1}, Lc/e/a/a/j/v;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lc/e/a/a/n/A;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/o;->h:Lc/e/a/a/n/A;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/o;->g:Landroid/os/Handler;

    return-void
.end method

.method public final a(Ljava/lang/Object;Lc/e/a/a/j/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/e/a/a/j/v;",
            ")V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/o;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Z)V

    .line 6
    new-instance v0, Lc/e/a/a/j/a;

    invoke-direct {v0, p0, p1}, Lc/e/a/a/j/a;-><init>(Lc/e/a/a/j/o;Ljava/lang/Object;)V

    .line 7
    new-instance v1, Lc/e/a/a/j/o$a;

    invoke-direct {v1, p0, p1}, Lc/e/a/a/j/o$a;-><init>(Lc/e/a/a/j/o;Ljava/lang/Object;)V

    .line 8
    iget-object v2, p0, Lc/e/a/a/j/o;->f:Ljava/util/HashMap;

    new-instance v3, Lc/e/a/a/j/o$b;

    invoke-direct {v3, p2, v0, v1}, Lc/e/a/a/j/o$b;-><init>(Lc/e/a/a/j/v;Lc/e/a/a/j/v$b;Lc/e/a/a/j/w;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lc/e/a/a/j/o;->g:Landroid/os/Handler;

    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lc/e/a/a/j/v;->a(Landroid/os/Handler;Lc/e/a/a/j/w;)V

    .line 10
    iget-object p1, p0, Lc/e/a/a/j/o;->h:Lc/e/a/a/n/A;

    invoke-interface {p2, v0, p1}, Lc/e/a/a/j/v;->a(Lc/e/a/a/j/v$b;Lc/e/a/a/n/A;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;Lc/e/a/a/j/v;Lc/e/a/a/Z;Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lc/e/a/a/j/o;->b(Ljava/lang/Object;Lc/e/a/a/j/v;Lc/e/a/a/Z;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/o;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/o$b;

    .line 2
    iget-object v2, v1, Lc/e/a/a/j/o$b;->a:Lc/e/a/a/j/v;

    iget-object v3, v1, Lc/e/a/a/j/o$b;->b:Lc/e/a/a/j/v$b;

    invoke-interface {v2, v3}, Lc/e/a/a/j/v;->a(Lc/e/a/a/j/v$b;)V

    .line 3
    iget-object v2, v1, Lc/e/a/a/j/o$b;->a:Lc/e/a/a/j/v;

    iget-object v1, v1, Lc/e/a/a/j/o$b;->c:Lc/e/a/a/j/w;

    invoke-interface {v2, v1}, Lc/e/a/a/j/v;->a(Lc/e/a/a/j/w;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/o;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public abstract b(Ljava/lang/Object;Lc/e/a/a/j/v;Lc/e/a/a/Z;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/e/a/a/j/v;",
            "Lc/e/a/a/Z;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
