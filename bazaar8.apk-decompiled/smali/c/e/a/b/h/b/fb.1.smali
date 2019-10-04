.class public final Lc/e/a/b/h/b/fb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/h/b/cb;

.field public final synthetic b:Lc/e/a/b/h/b/db;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/db;Lc/e/a/b/h/b/cb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/fb;->b:Lc/e/a/b/h/b/db;

    iput-object p2, p0, Lc/e/a/b/h/b/fb;->a:Lc/e/a/b/h/b/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/fb;->b:Lc/e/a/b/h/b/db;

    iget-object v1, p0, Lc/e/a/b/h/b/fb;->a:Lc/e/a/b/h/b/cb;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc/e/a/b/h/b/db;->a(Lc/e/a/b/h/b/db;Lc/e/a/b/h/b/cb;Z)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/fb;->b:Lc/e/a/b/h/b/db;

    const/4 v1, 0x0

    iput-object v1, v0, Lc/e/a/b/h/b/db;->c:Lc/e/a/b/h/b/cb;

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/h/b/_a;->r()Lc/e/a/b/h/b/gb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/h/b/cb;)V

    return-void
.end method
