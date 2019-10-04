.class public final Lc/e/a/b/d/a/a/T;
.super Lc/e/a/b/d/a/a/A;


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:Lc/e/a/b/d/a/a/S;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/S;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/a/a/T;->b:Lc/e/a/b/d/a/a/S;

    iput-object p2, p0, Lc/e/a/b/d/a/a/T;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lc/e/a/b/d/a/a/A;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/T;->b:Lc/e/a/b/d/a/a/S;

    iget-object v0, v0, Lc/e/a/b/d/a/a/S;->b:Lc/e/a/b/d/a/a/P;

    invoke-virtual {v0}, Lc/e/a/b/d/a/a/P;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/T;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/e/a/b/d/a/a/T;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
