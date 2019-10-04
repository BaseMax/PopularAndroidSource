.class public final Lc/e/a/b/h/b/Va;
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
    iput-object p1, p0, Lc/e/a/b/h/b/Va;->b:Lc/e/a/b/h/b/Fa;

    iput-wide p2, p0, Lc/e/a/b/h/b/Va;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Va;->b:Lc/e/a/b/h/b/Fa;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->q:Lc/e/a/b/h/b/I;

    iget-wide v1, p0, Lc/e/a/b/h/b/Va;->a:J

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/I;->a(J)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Va;->b:Lc/e/a/b/h/b/Fa;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v0

    iget-wide v1, p0, Lc/e/a/b/h/b/Va;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Minimum session duration set"

    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
