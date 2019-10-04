.class public final Lc/e/a/b/h/b/Qb;
.super Lc/e/a/b/h/b/c;


# instance fields
.field public final synthetic e:Lc/e/a/b/h/b/Tb;

.field public final synthetic f:Lc/e/a/b/h/b/Pb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Pb;Lc/e/a/b/h/b/wa;Lc/e/a/b/h/b/Tb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Qb;->f:Lc/e/a/b/h/b/Pb;

    iput-object p3, p0, Lc/e/a/b/h/b/Qb;->e:Lc/e/a/b/h/b/Tb;

    invoke-direct {p0, p2}, Lc/e/a/b/h/b/c;-><init>(Lc/e/a/b/h/b/wa;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Qb;->f:Lc/e/a/b/h/b/Pb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Pb;->v()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Qb;->f:Lc/e/a/b/h/b/Pb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/Qb;->e:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->t()V

    return-void
.end method
