.class public Lcom/bumptech/glide/load/engine/DecodeJob$c;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lc/b/a/c/c;

.field public b:Lc/b/a/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/h<",
            "TZ;>;"
        }
    .end annotation
.end field

.field public c:Lc/b/a/c/b/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/b/C<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->a:Lc/b/a/c/c;

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->b:Lc/b/a/c/h;

    .line 12
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->c:Lc/b/a/c/b/C;

    return-void
.end method

.method public a(Lc/b/a/c/c;Lc/b/a/c/h;Lc/b/a/c/b/C;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/c/c;",
            "Lc/b/a/c/h<",
            "TX;>;",
            "Lc/b/a/c/b/C<",
            "TX;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->a:Lc/b/a/c/c;

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->b:Lc/b/a/c/h;

    .line 3
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->c:Lc/b/a/c/b/C;

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/DecodeJob$d;Lc/b/a/c/f;)V
    .locals 4

    const-string v0, "DecodeJob.encode"

    .line 4
    invoke-static {v0}, Lc/b/a/i/a/e;->a(Ljava/lang/String;)V

    .line 5
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$d;->a()Lc/b/a/c/b/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->a:Lc/b/a/c/c;

    new-instance v1, Lc/b/a/c/b/f;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->b:Lc/b/a/c/h;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->c:Lc/b/a/c/b/C;

    invoke-direct {v1, v2, v3, p2}, Lc/b/a/c/b/f;-><init>(Lc/b/a/c/a;Ljava/lang/Object;Lc/b/a/c/f;)V

    invoke-interface {p1, v0, v1}, Lc/b/a/c/b/b/a;->a(Lc/b/a/c/c;Lc/b/a/c/b/b/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->c:Lc/b/a/c/b/C;

    invoke-virtual {p1}, Lc/b/a/c/b/C;->e()V

    .line 7
    invoke-static {}, Lc/b/a/i/a/e;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->c:Lc/b/a/c/b/C;

    invoke-virtual {p2}, Lc/b/a/c/b/C;->e()V

    .line 9
    invoke-static {}, Lc/b/a/i/a/e;->a()V

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->c:Lc/b/a/c/b/C;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
