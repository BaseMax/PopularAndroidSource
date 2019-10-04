.class public final synthetic Lc/e/c/d/V;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lc/e/c/d/T;

.field public final b:Landroid/os/Bundle;

.field public final c:Lc/e/a/b/j/h;


# direct methods
.method public constructor <init>(Lc/e/c/d/T;Landroid/os/Bundle;Lc/e/a/b/j/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/c/d/V;->a:Lc/e/c/d/T;

    iput-object p2, p0, Lc/e/c/d/V;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lc/e/c/d/V;->c:Lc/e/a/b/j/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/e/c/d/V;->a:Lc/e/c/d/T;

    iget-object v1, p0, Lc/e/c/d/V;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lc/e/c/d/V;->c:Lc/e/a/b/j/h;

    invoke-virtual {v0, v1, v2}, Lc/e/c/d/T;->a(Landroid/os/Bundle;Lc/e/a/b/j/h;)V

    return-void
.end method
