.class public Lc/b/a/n;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lc/b/a/d/j;
.implements Lc/b/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n$a;,
        Lc/b/a/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/d/j;",
        "Lc/b/a/h<",
        "Lc/b/a/k<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/g/g;

.field public static final b:Lc/b/a/g/g;

.field public static final c:Lc/b/a/g/g;


# instance fields
.field public final d:Lc/b/a/e;

.field public final e:Landroid/content/Context;

.field public final f:Lc/b/a/d/i;

.field public final g:Lc/b/a/d/p;

.field public final h:Lc/b/a/d/o;

.field public final i:Lc/b/a/d/r;

.field public final j:Ljava/lang/Runnable;

.field public final k:Landroid/os/Handler;

.field public final l:Lc/b/a/d/c;

.field public m:Lc/b/a/g/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lc/b/a/g/g;->b(Ljava/lang/Class;)Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/g/g;->F()Lc/b/a/g/g;

    move-result-object v0

    sput-object v0, Lc/b/a/n;->a:Lc/b/a/g/g;

    .line 2
    const-class v0, Lc/b/a/c/d/e/c;

    invoke-static {v0}, Lc/b/a/g/g;->b(Ljava/lang/Class;)Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/g/g;->F()Lc/b/a/g/g;

    move-result-object v0

    sput-object v0, Lc/b/a/n;->b:Lc/b/a/g/g;

    .line 3
    sget-object v0, Lc/b/a/c/b/p;->c:Lc/b/a/c/b/p;

    .line 4
    invoke-static {v0}, Lc/b/a/g/g;->b(Lc/b/a/c/b/p;)Lc/b/a/g/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lc/b/a/g/g;->a(Lcom/bumptech/glide/Priority;)Lc/b/a/g/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lc/b/a/g/g;->a(Z)Lc/b/a/g/g;

    move-result-object v0

    sput-object v0, Lc/b/a/n;->c:Lc/b/a/g/g;

    return-void
.end method

.method public constructor <init>(Lc/b/a/e;Lc/b/a/d/i;Lc/b/a/d/o;Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v4, Lc/b/a/d/p;

    invoke-direct {v4}, Lc/b/a/d/p;-><init>()V

    .line 2
    invoke-virtual {p1}, Lc/b/a/e;->e()Lc/b/a/d/d;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lc/b/a/n;-><init>(Lc/b/a/e;Lc/b/a/d/i;Lc/b/a/d/o;Lc/b/a/d/p;Lc/b/a/d/d;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/e;Lc/b/a/d/i;Lc/b/a/d/o;Lc/b/a/d/p;Lc/b/a/d/d;Landroid/content/Context;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lc/b/a/d/r;

    invoke-direct {v0}, Lc/b/a/d/r;-><init>()V

    iput-object v0, p0, Lc/b/a/n;->i:Lc/b/a/d/r;

    .line 6
    new-instance v0, Lc/b/a/l;

    invoke-direct {v0, p0}, Lc/b/a/l;-><init>(Lc/b/a/n;)V

    iput-object v0, p0, Lc/b/a/n;->j:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc/b/a/n;->k:Landroid/os/Handler;

    .line 8
    iput-object p1, p0, Lc/b/a/n;->d:Lc/b/a/e;

    .line 9
    iput-object p2, p0, Lc/b/a/n;->f:Lc/b/a/d/i;

    .line 10
    iput-object p3, p0, Lc/b/a/n;->h:Lc/b/a/d/o;

    .line 11
    iput-object p4, p0, Lc/b/a/n;->g:Lc/b/a/d/p;

    .line 12
    iput-object p6, p0, Lc/b/a/n;->e:Landroid/content/Context;

    .line 13
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lc/b/a/n$b;

    invoke-direct {p6, p4}, Lc/b/a/n$b;-><init>(Lc/b/a/d/p;)V

    .line 14
    invoke-interface {p5, p3, p6}, Lc/b/a/d/d;->a(Landroid/content/Context;Lc/b/a/d/c$a;)Lc/b/a/d/c;

    move-result-object p3

    iput-object p3, p0, Lc/b/a/n;->l:Lc/b/a/d/c;

    .line 15
    invoke-static {}, Lc/b/a/i/k;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 16
    iget-object p3, p0, Lc/b/a/n;->k:Landroid/os/Handler;

    iget-object p4, p0, Lc/b/a/n;->j:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p2, p0}, Lc/b/a/d/i;->a(Lc/b/a/d/j;)V

    .line 18
    :goto_0
    iget-object p3, p0, Lc/b/a/n;->l:Lc/b/a/d/c;

    invoke-interface {p2, p3}, Lc/b/a/d/i;->a(Lc/b/a/d/j;)V

    .line 19
    invoke-virtual {p1}, Lc/b/a/e;->g()Lc/b/a/g;

    move-result-object p2

    invoke-virtual {p2}, Lc/b/a/g;->b()Lc/b/a/g/g;

    move-result-object p2

    invoke-virtual {p0, p2}, Lc/b/a/n;->a(Lc/b/a/g/g;)V

    .line 20
    invoke-virtual {p1, p0}, Lc/b/a/e;->a(Lc/b/a/n;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lc/b/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lc/b/a/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lc/b/a/n;->d()Lc/b/a/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/k;->a(Landroid/net/Uri;)Lc/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Lc/b/a/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lc/b/a/k<",
            "TResourceType;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lc/b/a/k;

    iget-object v1, p0, Lc/b/a/n;->d:Lc/b/a/e;

    iget-object v2, p0, Lc/b/a/n;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lc/b/a/k;-><init>(Lc/b/a/e;Lc/b/a/n;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lc/b/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc/b/a/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lc/b/a/n;->d()Lc/b/a/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/k;->a(Ljava/lang/String;)Lc/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/b/a/n;->g()V

    .line 3
    iget-object v0, p0, Lc/b/a/n;->i:Lc/b/a/d/r;

    invoke-virtual {v0}, Lc/b/a/d/r;->a()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 7
    new-instance v0, Lc/b/a/n$a;

    invoke-direct {v0, p1}, Lc/b/a/n$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lc/b/a/n;->a(Lc/b/a/g/a/h;)V

    return-void
.end method

.method public a(Lc/b/a/g/a/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/a/h<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lc/b/a/i/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lc/b/a/n;->c(Lc/b/a/g/a/h;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lc/b/a/n;->k:Landroid/os/Handler;

    new-instance v1, Lc/b/a/m;

    invoke-direct {v1, p0, p1}, Lc/b/a/m;-><init>(Lc/b/a/n;Lc/b/a/g/a/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public a(Lc/b/a/g/a/h;Lc/b/a/g/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/a/h<",
            "*>;",
            "Lc/b/a/g/c;",
            ")V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lc/b/a/n;->i:Lc/b/a/d/r;

    invoke-virtual {v0, p1}, Lc/b/a/d/r;->a(Lc/b/a/g/a/h;)V

    .line 12
    iget-object p1, p0, Lc/b/a/n;->g:Lc/b/a/d/p;

    invoke-virtual {p1, p2}, Lc/b/a/d/p;->b(Lc/b/a/g/c;)V

    return-void
.end method

.method public a(Lc/b/a/g/g;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object p1

    invoke-virtual {p1}, Lc/b/a/g/g;->a()Lc/b/a/g/g;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/n;->m:Lc/b/a/g/g;

    return-void
.end method

.method public b(Ljava/lang/Class;)Lc/b/a/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lc/b/a/o<",
            "*TT;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lc/b/a/n;->d:Lc/b/a/e;

    invoke-virtual {v0}, Lc/b/a/e;->g()Lc/b/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/g;->a(Ljava/lang/Class;)Lc/b/a/o;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/n;->f()V

    .line 2
    iget-object v0, p0, Lc/b/a/n;->i:Lc/b/a/d/r;

    invoke-virtual {v0}, Lc/b/a/d/r;->b()V

    return-void
.end method

.method public b(Lc/b/a/g/a/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/a/h<",
            "*>;)Z"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Lc/b/a/g/a/h;->getRequest()Lc/b/a/g/c;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v2, p0, Lc/b/a/n;->g:Lc/b/a/d/p;

    invoke-virtual {v2, v0}, Lc/b/a/d/p;->a(Lc/b/a/g/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lc/b/a/n;->i:Lc/b/a/d/r;

    invoke-virtual {v0, p1}, Lc/b/a/d/r;->b(Lc/b/a/g/a/h;)V

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Lc/b/a/g/a/h;->a(Lc/b/a/g/c;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c()Lc/b/a/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lc/b/a/n;->a(Ljava/lang/Class;)Lc/b/a/k;

    move-result-object v0

    sget-object v1, Lc/b/a/n;->a:Lc/b/a/g/g;

    invoke-virtual {v0, v1}, Lc/b/a/k;->a(Lc/b/a/g/g;)Lc/b/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lc/b/a/g/a/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/a/h<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lc/b/a/n;->b(Lc/b/a/g/a/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/b/a/n;->d:Lc/b/a/e;

    invoke-virtual {v0, p1}, Lc/b/a/e;->a(Lc/b/a/g/a/h;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lc/b/a/g/a/h;->getRequest()Lc/b/a/g/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lc/b/a/g/a/h;->getRequest()Lc/b/a/g/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v1}, Lc/b/a/g/a/h;->a(Lc/b/a/g/c;)V

    .line 6
    invoke-interface {v0}, Lc/b/a/g/c;->clear()V

    :cond_0
    return-void
.end method

.method public d()Lc/b/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lc/b/a/n;->a(Ljava/lang/Class;)Lc/b/a/k;

    move-result-object v0

    return-object v0
.end method

.method public e()Lc/b/a/g/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n;->m:Lc/b/a/g/g;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 2
    iget-object v0, p0, Lc/b/a/n;->g:Lc/b/a/d/p;

    invoke-virtual {v0}, Lc/b/a/d/p;->b()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 2
    iget-object v0, p0, Lc/b/a/n;->g:Lc/b/a/d/p;

    invoke-virtual {v0}, Lc/b/a/d/p;->d()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/n;->i:Lc/b/a/d/r;

    invoke-virtual {v0}, Lc/b/a/d/r;->onDestroy()V

    .line 2
    iget-object v0, p0, Lc/b/a/n;->i:Lc/b/a/d/r;

    invoke-virtual {v0}, Lc/b/a/d/r;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/g/a/h;

    .line 3
    invoke-virtual {p0, v1}, Lc/b/a/n;->a(Lc/b/a/g/a/h;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/b/a/n;->i:Lc/b/a/d/r;

    invoke-virtual {v0}, Lc/b/a/d/r;->c()V

    .line 5
    iget-object v0, p0, Lc/b/a/n;->g:Lc/b/a/d/p;

    invoke-virtual {v0}, Lc/b/a/d/p;->a()V

    .line 6
    iget-object v0, p0, Lc/b/a/n;->f:Lc/b/a/d/i;

    invoke-interface {v0, p0}, Lc/b/a/d/i;->b(Lc/b/a/d/j;)V

    .line 7
    iget-object v0, p0, Lc/b/a/n;->f:Lc/b/a/d/i;

    iget-object v1, p0, Lc/b/a/n;->l:Lc/b/a/d/c;

    invoke-interface {v0, v1}, Lc/b/a/d/i;->b(Lc/b/a/d/j;)V

    .line 8
    iget-object v0, p0, Lc/b/a/n;->k:Landroid/os/Handler;

    iget-object v1, p0, Lc/b/a/n;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lc/b/a/n;->d:Lc/b/a/e;

    invoke-virtual {v0, p0}, Lc/b/a/e;->b(Lc/b/a/n;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/n;->g:Lc/b/a/d/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/n;->h:Lc/b/a/d/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
