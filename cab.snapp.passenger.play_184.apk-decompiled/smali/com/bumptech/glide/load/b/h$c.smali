.class final Lcom/bumptech/glide/load/b/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field a:Lcom/bumptech/glide/load/d;

.field b:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "TZ;>;"
        }
    .end annotation
.end field

.field c:Lcom/bumptech/glide/load/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/u<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/load/b/h$d;Lcom/bumptech/glide/load/g;)V
    .locals 4

    const-string v0, "DecodeJob.encode"

    .line 674
    invoke-static {v0}, Lcom/bumptech/glide/g/a/b;->beginSection(Ljava/lang/String;)V

    .line 676
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/h$d;->getDiskCache()Lcom/bumptech/glide/load/b/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/b/h$c;->a:Lcom/bumptech/glide/load/d;

    new-instance v1, Lcom/bumptech/glide/load/b/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/h$c;->b:Lcom/bumptech/glide/load/i;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/h$c;->c:Lcom/bumptech/glide/load/b/u;

    invoke-direct {v1, v2, v3, p2}, Lcom/bumptech/glide/load/b/e;-><init>(Lcom/bumptech/glide/load/a;Ljava/lang/Object;Lcom/bumptech/glide/load/g;)V

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/b/b/a;->put(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/b/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    iget-object p1, p0, Lcom/bumptech/glide/load/b/h$c;->c:Lcom/bumptech/glide/load/b/u;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/u;->a()V

    .line 680
    invoke-static {}, Lcom/bumptech/glide/g/a/b;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    .line 679
    iget-object p2, p0, Lcom/bumptech/glide/load/b/h$c;->c:Lcom/bumptech/glide/load/b/u;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/b/u;->a()V

    .line 680
    invoke-static {}, Lcom/bumptech/glide/g/a/b;->endSection()V

    throw p1
.end method

.method final a()Z
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h$c;->c:Lcom/bumptech/glide/load/b/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lcom/bumptech/glide/load/b/h$c;->a:Lcom/bumptech/glide/load/d;

    .line 690
    iput-object v0, p0, Lcom/bumptech/glide/load/b/h$c;->b:Lcom/bumptech/glide/load/i;

    .line 691
    iput-object v0, p0, Lcom/bumptech/glide/load/b/h$c;->c:Lcom/bumptech/glide/load/b/u;

    return-void
.end method
