.class public final Lc/e/a/b/g/f/r;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/r;->f:Lc/e/a/b/g/f/b;

    iput-boolean p2, p0, Lc/e/a/b/g/f/r;->e:Z

    invoke-direct {p0, p1}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/r;->f:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v0

    iget-boolean v1, p0, Lc/e/a/b/g/f/r;->e:Z

    invoke-interface {v0, v1}, Lc/e/a/b/g/f/cd;->setDataCollectionEnabled(Z)V

    return-void
.end method
