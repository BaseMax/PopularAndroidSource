.class public final Lc/e/a/b/g/f/d;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/os/Bundle;

.field public final synthetic h:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/d;->h:Lc/e/a/b/g/f/b;

    iput-object p2, p0, Lc/e/a/b/g/f/d;->e:Ljava/lang/String;

    iput-object p3, p0, Lc/e/a/b/g/f/d;->f:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/g/f/d;->g:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/d;->h:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/g/f/d;->e:Ljava/lang/String;

    iget-object v2, p0, Lc/e/a/b/g/f/d;->f:Ljava/lang/String;

    iget-object v3, p0, Lc/e/a/b/g/f/d;->g:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lc/e/a/b/g/f/cd;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
