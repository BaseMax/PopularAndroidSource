.class public final Lc/e/a/b/h/b/Ub;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/h/b/Yb;

.field public final synthetic b:Lc/e/a/b/h/b/Tb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Tb;Lc/e/a/b/h/b/Yb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Ub;->b:Lc/e/a/b/h/b/Tb;

    iput-object p2, p0, Lc/e/a/b/h/b/Ub;->a:Lc/e/a/b/h/b/Yb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Ub;->b:Lc/e/a/b/h/b/Tb;

    iget-object v1, p0, Lc/e/a/b/h/b/Ub;->a:Lc/e/a/b/h/b/Yb;

    invoke-static {v0, v1}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/h/b/Tb;Lc/e/a/b/h/b/Yb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Ub;->b:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->f()V

    return-void
.end method
