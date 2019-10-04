.class public final Lc/e/a/b/h/b/P;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/h/b/Y;

.field public final synthetic b:Lc/e/a/b/h/b/t;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/O;Lc/e/a/b/h/b/Y;Lc/e/a/b/h/b/t;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lc/e/a/b/h/b/P;->a:Lc/e/a/b/h/b/Y;

    iput-object p3, p0, Lc/e/a/b/h/b/P;->b:Lc/e/a/b/h/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/P;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->n()Lc/e/a/b/h/b/L;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/P;->b:Lc/e/a/b/h/b/t;

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Install Referrer Reporter is null"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/P;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->n()Lc/e/a/b/h/b/L;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lc/e/a/b/h/b/L;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->z()V

    .line 5
    iget-object v1, v0, Lc/e/a/b/h/b/L;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/L;->a(Ljava/lang/String;)V

    return-void
.end method
