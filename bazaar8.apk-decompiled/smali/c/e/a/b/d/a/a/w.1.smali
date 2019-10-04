.class public final Lc/e/a/b/d/a/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/d/a/a/v;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/a/a/w;->a:Lc/e/a/b/d/a/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/w;->a:Lc/e/a/b/d/a/a/v;

    iget-object v0, v0, Lc/e/a/b/d/a/a/v;->a:Lc/e/a/b/d/a/a/c$a;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c$a;->c(Lc/e/a/b/d/a/a/c$a;)Lc/e/a/b/d/a/a$f;

    move-result-object v0

    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->a()V

    return-void
.end method
