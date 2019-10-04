.class public final Lc/e/c/d/C;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Lc/e/c/d/E;


# direct methods
.method public constructor <init>(Lc/e/c/d/E;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/c/d/C;->c:Lc/e/c/d/E;

    iput-object p2, p0, Lc/e/c/d/C;->a:Landroid/content/Intent;

    iput-object p3, p0, Lc/e/c/d/C;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/c/d/C;->c:Lc/e/c/d/E;

    iget-object v1, p0, Lc/e/c/d/C;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lc/e/c/d/E;->d(Landroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lc/e/c/d/C;->c:Lc/e/c/d/E;

    iget-object v1, p0, Lc/e/c/d/C;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lc/e/c/d/E;->a(Lc/e/c/d/E;Landroid/content/Intent;)V

    return-void
.end method
