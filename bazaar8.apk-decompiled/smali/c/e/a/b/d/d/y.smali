.class public final Lc/e/a/b/d/d/y;
.super Lc/e/a/b/d/d/g;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lc/e/a/b/d/a/a/f;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lc/e/a/b/d/a/a/f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/d/y;->a:Landroid/content/Intent;

    iput-object p2, p0, Lc/e/a/b/d/d/y;->b:Lc/e/a/b/d/a/a/f;

    iput p3, p0, Lc/e/a/b/d/d/y;->c:I

    invoke-direct {p0}, Lc/e/a/b/d/d/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/y;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lc/e/a/b/d/d/y;->b:Lc/e/a/b/d/a/a/f;

    iget v2, p0, Lc/e/a/b/d/d/y;->c:I

    invoke-interface {v1, v0, v2}, Lc/e/a/b/d/a/a/f;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
