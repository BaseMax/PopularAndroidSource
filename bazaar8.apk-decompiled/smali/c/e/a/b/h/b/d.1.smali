.class public final Lc/e/a/b/h/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/h/b/wa;

.field public final synthetic b:Lc/e/a/b/h/b/c;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/c;Lc/e/a/b/h/b/wa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/d;->b:Lc/e/a/b/h/b/c;

    iput-object p2, p0, Lc/e/a/b/h/b/d;->a:Lc/e/a/b/h/b/wa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/d;->a:Lc/e/a/b/h/b/wa;

    invoke-interface {v0}, Lc/e/a/b/h/b/wa;->a()Lc/e/a/b/h/b/nc;

    invoke-static {}, Lc/e/a/b/h/b/nc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/d;->a:Lc/e/a/b/h/b/wa;

    invoke-interface {v0}, Lc/e/a/b/h/b/wa;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/d;->b:Lc/e/a/b/h/b/c;

    invoke-virtual {v0}, Lc/e/a/b/h/b/c;->d()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lc/e/a/b/h/b/d;->b:Lc/e/a/b/h/b/c;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lc/e/a/b/h/b/c;->a(Lc/e/a/b/h/b/c;J)J

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lc/e/a/b/h/b/d;->b:Lc/e/a/b/h/b/c;

    invoke-virtual {v0}, Lc/e/a/b/h/b/c;->c()V

    :cond_1
    return-void
.end method
