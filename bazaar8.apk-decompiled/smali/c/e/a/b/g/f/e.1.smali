.class public final Lc/e/a/b/g/f/e;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lc/e/a/b/g/f/bd;

.field public final synthetic h:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;Ljava/lang/String;Ljava/lang/String;Lc/e/a/b/g/f/bd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/e;->h:Lc/e/a/b/g/f/b;

    iput-object p2, p0, Lc/e/a/b/g/f/e;->e:Ljava/lang/String;

    iput-object p3, p0, Lc/e/a/b/g/f/e;->f:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/g/f/e;->g:Lc/e/a/b/g/f/bd;

    invoke-direct {p0, p1}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/e;->h:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/g/f/e;->e:Ljava/lang/String;

    iget-object v2, p0, Lc/e/a/b/g/f/e;->f:Ljava/lang/String;

    iget-object v3, p0, Lc/e/a/b/g/f/e;->g:Lc/e/a/b/g/f/bd;

    invoke-interface {v0, v1, v2, v3}, Lc/e/a/b/g/f/cd;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lc/e/a/b/g/f/fd;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/e;->g:Lc/e/a/b/g/f/bd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/e/a/b/g/f/bd;->b(Landroid/os/Bundle;)V

    return-void
.end method
