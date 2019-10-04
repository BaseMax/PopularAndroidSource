.class public abstract Lb/H/a/b/a/c;
.super Ljava/lang/Object;
.source "ConstraintController.java"

# interfaces
.implements Lb/H/a/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/H/a/b/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/H/a/b/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Lb/H/a/b/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/H/a/b/b/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Lb/H/a/b/a/c$a;


# direct methods
.method public constructor <init>(Lb/H/a/b/b/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/H/a/b/b/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/H/a/b/a/c;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lb/H/a/b/a/c;->c:Lb/H/a/b/b/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 12
    iget-object v0, p0, Lb/H/a/b/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lb/H/a/b/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    iget-object v0, p0, Lb/H/a/b/a/c;->c:Lb/H/a/b/b/e;

    invoke-virtual {v0, p0}, Lb/H/a/b/b/e;->b(Lb/H/a/b/a;)V

    :cond_0
    return-void
.end method

.method public a(Lb/H/a/b/a/c$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/b/a/c;->d:Lb/H/a/b/a/c$a;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lb/H/a/b/a/c;->d:Lb/H/a/b/a/c$a;

    .line 3
    invoke-virtual {p0}, Lb/H/a/b/a/c;->b()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lb/H/a/b/a/c;->b:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lb/H/a/b/a/c;->b()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/H/a/c/o;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lb/H/a/b/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/H/a/c/o;

    .line 6
    invoke-virtual {p0, v0}, Lb/H/a/b/a/c;->a(Lb/H/a/c/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lb/H/a/b/a/c;->a:Ljava/util/List;

    iget-object v0, v0, Lb/H/a/c/o;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lb/H/a/b/a/c;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lb/H/a/b/a/c;->c:Lb/H/a/b/b/e;

    invoke-virtual {p1, p0}, Lb/H/a/b/b/e;->b(Lb/H/a/b/a;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lb/H/a/b/a/c;->c:Lb/H/a/b/b/e;

    invoke-virtual {p1, p0}, Lb/H/a/b/b/e;->a(Lb/H/a/b/a;)V

    .line 11
    :goto_1
    invoke-virtual {p0}, Lb/H/a/b/a/c;->b()V

    return-void
.end method

.method public abstract a(Lb/H/a/c/o;)Z
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lb/H/a/b/a/c;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lb/H/a/b/a/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/H/a/b/a/c;->a:Ljava/util/List;

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/H/a/b/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/H/a/b/a/c;->d:Lb/H/a/b/a/c$a;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lb/H/a/b/a/c;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lb/H/a/b/a/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lb/H/a/b/a/c;->d:Lb/H/a/b/a/c$a;

    iget-object v1, p0, Lb/H/a/b/a/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lb/H/a/b/a/c$a;->a(Ljava/util/List;)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lb/H/a/b/a/c;->d:Lb/H/a/b/a/c$a;

    iget-object v1, p0, Lb/H/a/b/a/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lb/H/a/b/a/c$a;->b(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract b(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
