.class public final Lc/e/a/b/d/a/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/d/d/d$e;


# instance fields
.field public final synthetic a:Lc/e/a/b/d/a/a/c$a;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/a/a/v;->a:Lc/e/a/b/d/a/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/v;->a:Lc/e/a/b/d/a/a/c$a;

    iget-object v0, v0, Lc/e/a/b/d/a/a/c$a;->m:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/e/a/b/d/a/a/w;

    invoke-direct {v1, p0}, Lc/e/a/b/d/a/a/w;-><init>(Lc/e/a/b/d/a/a/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
