.class public final Lc/e/a/b/g/f/m;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:Lc/e/a/b/g/f/bd;

.field public final synthetic f:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/bd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/m;->f:Lc/e/a/b/g/f/b;

    iput-object p2, p0, Lc/e/a/b/g/f/m;->e:Lc/e/a/b/g/f/bd;

    invoke-direct {p0, p1}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/m;->f:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/g/f/m;->e:Lc/e/a/b/g/f/bd;

    invoke-interface {v0, v1}, Lc/e/a/b/g/f/cd;->getCurrentScreenClass(Lc/e/a/b/g/f/fd;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/m;->e:Lc/e/a/b/g/f/bd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/e/a/b/g/f/bd;->b(Landroid/os/Bundle;)V

    return-void
.end method
