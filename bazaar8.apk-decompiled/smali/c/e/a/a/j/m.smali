.class public abstract Lc/e/a/a/j/m;
.super Ljava/lang/Object;
.source "BaseMediaSource.java"

# interfaces
.implements Lc/e/a/a/j/v;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/j/v$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lc/e/a/a/j/w$a;

.field public c:Landroid/os/Looper;

.field public d:Lc/e/a/a/Z;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/e/a/a/j/m;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lc/e/a/a/j/w$a;

    invoke-direct {v0}, Lc/e/a/a/j/w$a;-><init>()V

    iput-object v0, p0, Lc/e/a/a/j/m;->b:Lc/e/a/a/j/w$a;

    return-void
.end method


# virtual methods
.method public final a(ILc/e/a/a/j/v$a;J)Lc/e/a/a/j/w$a;
    .locals 1

    .line 8
    iget-object v0, p0, Lc/e/a/a/j/m;->b:Lc/e/a/a/j/w$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/e/a/a/j/w$a;->a(ILc/e/a/a/j/v$a;J)Lc/e/a/a/j/w$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/e/a/a/j/v$a;)Lc/e/a/a/j/w$a;
    .locals 4

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/m;->b:Lc/e/a/a/j/w$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lc/e/a/a/j/w$a;->a(ILc/e/a/a/j/v$a;J)Lc/e/a/a/j/w$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/e/a/a/j/v$a;J)Lc/e/a/a/j/w$a;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-static {v1}, Lc/e/a/a/o/e;->a(Z)V

    .line 7
    iget-object v1, p0, Lc/e/a/a/j/m;->b:Lc/e/a/a/j/w$a;

    invoke-virtual {v1, v0, p1, p2, p3}, Lc/e/a/a/j/w$a;->a(ILc/e/a/a/j/v$a;J)Lc/e/a/a/j/w$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/os/Handler;Lc/e/a/a/j/w;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lc/e/a/a/j/m;->b:Lc/e/a/a/j/w$a;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/j/w$a;->a(Landroid/os/Handler;Lc/e/a/a/j/w;)V

    return-void
.end method

.method public final a(Lc/e/a/a/Z;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/m;->d:Lc/e/a/a/Z;

    .line 2
    iput-object p2, p0, Lc/e/a/a/j/m;->e:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/v$b;

    .line 4
    invoke-interface {v1, p0, p1, p2}, Lc/e/a/a/j/v$b;->a(Lc/e/a/a/j/v;Lc/e/a/a/Z;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/a/j/v$b;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lc/e/a/a/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lc/e/a/a/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lc/e/a/a/j/m;->c:Landroid/os/Looper;

    .line 22
    iput-object p1, p0, Lc/e/a/a/j/m;->d:Lc/e/a/a/Z;

    .line 23
    iput-object p1, p0, Lc/e/a/a/j/m;->e:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lc/e/a/a/j/m;->b()V

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/a/j/v$b;Lc/e/a/a/n/A;)V
    .locals 2

    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lc/e/a/a/j/m;->c:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lc/e/a/a/o/e;->a(Z)V

    .line 13
    iget-object v1, p0, Lc/e/a/a/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, p0, Lc/e/a/a/j/m;->c:Landroid/os/Looper;

    if-nez v1, :cond_2

    .line 15
    iput-object v0, p0, Lc/e/a/a/j/m;->c:Landroid/os/Looper;

    .line 16
    invoke-virtual {p0, p2}, Lc/e/a/a/j/m;->a(Lc/e/a/a/n/A;)V

    goto :goto_2

    .line 17
    :cond_2
    iget-object p2, p0, Lc/e/a/a/j/m;->d:Lc/e/a/a/Z;

    if-eqz p2, :cond_3

    .line 18
    iget-object v0, p0, Lc/e/a/a/j/m;->e:Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lc/e/a/a/j/v$b;->a(Lc/e/a/a/j/v;Lc/e/a/a/Z;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final a(Lc/e/a/a/j/w;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lc/e/a/a/j/m;->b:Lc/e/a/a/j/w$a;

    invoke-virtual {v0, p1}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/j/w;)V

    return-void
.end method

.method public abstract a(Lc/e/a/a/n/A;)V
.end method

.method public abstract b()V
.end method
