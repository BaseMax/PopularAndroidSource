.class public final Lc/e/a/b/h/b/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lc/e/a/b/h/b/D;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/D;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/E;->b:Lc/e/a/b/h/b/D;

    iput-boolean p2, p0, Lc/e/a/b/h/b/E;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/E;->b:Lc/e/a/b/h/b/D;

    invoke-static {v0}, Lc/e/a/b/h/b/D;->a(Lc/e/a/b/h/b/D;)Lc/e/a/b/h/b/Tb;

    move-result-object v0

    iget-boolean v1, p0, Lc/e/a/b/h/b/E;->a:Z

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/Tb;->a(Z)V

    return-void
.end method
