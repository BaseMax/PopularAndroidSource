.class public final Lc/e/a/b/h/b/Ja;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lc/e/a/b/h/b/Fa;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Fa;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Ja;->b:Lc/e/a/b/h/b/Fa;

    iput-wide p2, p0, Lc/e/a/b/h/b/Ja;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Ja;->b:Lc/e/a/b/h/b/Fa;

    iget-wide v1, p0, Lc/e/a/b/h/b/Ja;->a:J

    .line 2
    invoke-virtual {v0}, Lc/e/a/b/h/b/_a;->l()V

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/h/b/_a;->j()V

    .line 4
    invoke-virtual {v0}, Lc/e/a/b/h/b/zb;->w()V

    .line 5
    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v3

    const-string v4, "Resetting analytics data (FE)"

    invoke-virtual {v3, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lc/e/a/b/h/b/_a;->u()Lc/e/a/b/h/b/Jb;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/Jb;->C()V

    .line 7
    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v3

    invoke-virtual {v0}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc/e/a/b/h/b/pc;->p(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v3

    iget-object v3, v3, Lc/e/a/b/h/b/F;->k:Lc/e/a/b/h/b/I;

    invoke-virtual {v3, v1, v2}, Lc/e/a/b/h/b/I;->a(J)V

    .line 9
    :cond_0
    iget-object v1, v0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->f()Z

    move-result v1

    .line 10
    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/pc;->q()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v2

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lc/e/a/b/h/b/F;->d(Z)V

    .line 12
    :cond_1
    invoke-virtual {v0}, Lc/e/a/b/h/b/_a;->r()Lc/e/a/b/h/b/gb;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/gb;->D()V

    xor-int/lit8 v1, v1, 0x1

    .line 13
    iput-boolean v1, v0, Lc/e/a/b/h/b/Fa;->h:Z

    .line 14
    iget-object v0, p0, Lc/e/a/b/h/b/Ja;->b:Lc/e/a/b/h/b/Fa;

    invoke-virtual {v0}, Lc/e/a/b/h/b/_a;->r()Lc/e/a/b/h/b/gb;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/gb;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
