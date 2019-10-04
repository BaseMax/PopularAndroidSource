.class public final Lc/e/a/b/h/b/Db;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/h/b/xb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/xb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Db;->a:Lc/e/a/b/h/b/xb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Db;->a:Lc/e/a/b/h/b/xb;

    iget-object v0, v0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/h/b/gb;Lc/e/a/b/h/b/l;)Lc/e/a/b/h/b/l;

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Db;->a:Lc/e/a/b/h/b/xb;

    iget-object v0, v0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-static {v0}, Lc/e/a/b/h/b/gb;->b(Lc/e/a/b/h/b/gb;)V

    return-void
.end method
