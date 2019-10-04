.class public final Lc/e/a/b/g/f/B;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lc/e/a/b/g/f/bd;

.field public final synthetic g:Lc/e/a/b/g/f/b$c;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b$c;Landroid/app/Activity;Lc/e/a/b/g/f/bd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/B;->g:Lc/e/a/b/g/f/b$c;

    iput-object p2, p0, Lc/e/a/b/g/f/B;->e:Landroid/app/Activity;

    iput-object p3, p0, Lc/e/a/b/g/f/B;->f:Lc/e/a/b/g/f/bd;

    iget-object p1, p1, Lc/e/a/b/g/f/b$c;->a:Lc/e/a/b/g/f/b;

    invoke-direct {p0, p1}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/B;->g:Lc/e/a/b/g/f/b$c;

    iget-object v0, v0, Lc/e/a/b/g/f/b$c;->a:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/g/f/B;->e:Landroid/app/Activity;

    .line 2
    invoke-static {v1}, Lc/e/a/b/e/b;->a(Ljava/lang/Object;)Lc/e/a/b/e/a;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/g/f/B;->f:Lc/e/a/b/g/f/bd;

    iget-wide v3, p0, Lc/e/a/b/g/f/b$a;->b:J

    .line 3
    invoke-interface {v0, v1, v2, v3, v4}, Lc/e/a/b/g/f/cd;->onActivitySaveInstanceState(Lc/e/a/b/e/a;Lc/e/a/b/g/f/fd;J)V

    return-void
.end method
