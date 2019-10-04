.class public final Lc/e/a/b/g/f/n;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z

.field public final synthetic h:Lc/e/a/b/g/f/bd;

.field public final synthetic i:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;Ljava/lang/String;Ljava/lang/String;ZLc/e/a/b/g/f/bd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/n;->i:Lc/e/a/b/g/f/b;

    iput-object p2, p0, Lc/e/a/b/g/f/n;->e:Ljava/lang/String;

    iput-object p3, p0, Lc/e/a/b/g/f/n;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lc/e/a/b/g/f/n;->g:Z

    iput-object p5, p0, Lc/e/a/b/g/f/n;->h:Lc/e/a/b/g/f/bd;

    invoke-direct {p0, p1}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/n;->i:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/g/f/n;->e:Ljava/lang/String;

    iget-object v2, p0, Lc/e/a/b/g/f/n;->f:Ljava/lang/String;

    iget-boolean v3, p0, Lc/e/a/b/g/f/n;->g:Z

    iget-object v4, p0, Lc/e/a/b/g/f/n;->h:Lc/e/a/b/g/f/bd;

    invoke-interface {v0, v1, v2, v3, v4}, Lc/e/a/b/g/f/cd;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLc/e/a/b/g/f/fd;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/n;->h:Lc/e/a/b/g/f/bd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/e/a/b/g/f/bd;->b(Landroid/os/Bundle;)V

    return-void
.end method
