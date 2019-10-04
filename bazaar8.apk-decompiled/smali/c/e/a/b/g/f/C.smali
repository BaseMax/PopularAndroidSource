.class public final Lc/e/a/b/g/f/C;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lc/e/a/b/g/f/b$c;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b$c;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/C;->f:Lc/e/a/b/g/f/b$c;

    iput-object p2, p0, Lc/e/a/b/g/f/C;->e:Landroid/app/Activity;

    iget-object p1, p1, Lc/e/a/b/g/f/b$c;->a:Lc/e/a/b/g/f/b;

    invoke-direct {p0, p1}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/C;->f:Lc/e/a/b/g/f/b$c;

    iget-object v0, v0, Lc/e/a/b/g/f/b$c;->a:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/g/f/C;->e:Landroid/app/Activity;

    invoke-static {v1}, Lc/e/a/b/e/b;->a(Ljava/lang/Object;)Lc/e/a/b/e/a;

    move-result-object v1

    iget-wide v2, p0, Lc/e/a/b/g/f/b$a;->b:J

    invoke-interface {v0, v1, v2, v3}, Lc/e/a/b/g/f/cd;->onActivityDestroyed(Lc/e/a/b/e/a;J)V

    return-void
.end method
