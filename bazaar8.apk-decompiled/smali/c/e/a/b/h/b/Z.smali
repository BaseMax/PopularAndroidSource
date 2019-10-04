.class public final Lc/e/a/b/h/b/Z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/h/b/Ea;

.field public final synthetic b:Lc/e/a/b/h/b/Y;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Y;Lc/e/a/b/h/b/Ea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Z;->b:Lc/e/a/b/h/b/Y;

    iput-object p2, p0, Lc/e/a/b/h/b/Z;->a:Lc/e/a/b/h/b/Ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Z;->b:Lc/e/a/b/h/b/Y;

    iget-object v1, p0, Lc/e/a/b/h/b/Z;->a:Lc/e/a/b/h/b/Ea;

    invoke-static {v0, v1}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/Y;Lc/e/a/b/h/b/Ea;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Z;->b:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->g()V

    return-void
.end method
