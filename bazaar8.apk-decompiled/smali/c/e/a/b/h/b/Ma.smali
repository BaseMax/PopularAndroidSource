.class public final Lc/e/a/b/h/b/Ma;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lc/e/a/b/h/b/Fa;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Fa;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Ma;->b:Lc/e/a/b/h/b/Fa;

    iput-object p2, p0, Lc/e/a/b/h/b/Ma;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Ma;->b:Lc/e/a/b/h/b/Fa;

    iget-object v1, p0, Lc/e/a/b/h/b/Ma;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lc/e/a/b/h/b/Fa;->b(Lc/e/a/b/h/b/Fa;Landroid/os/Bundle;)V

    return-void
.end method
