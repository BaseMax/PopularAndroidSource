.class public Lf/a/a/e/b/T;
.super Ljava/lang/Object;
.source "VideoCommentInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/U;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/g;

.field public final synthetic b:Lf/a/a/e/b/U;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/U;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/T;->b:Lf/a/a/e/b/U;

    iput-object p2, p0, Lf/a/a/e/b/T;->a:Lf/a/a/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/T;->b:Lf/a/a/e/b/U;

    invoke-static {v0}, Lf/a/a/e/b/U;->a(Lf/a/a/e/b/U;)Lc/c/a/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/d/c/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/T;->a:Lf/a/a/e/g;

    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lf/a/a/g;->report_request_login_needed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lf/a/a/e/b/T;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lb/o/a/i;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lf/a/a/e/b/T;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object v0

    new-instance v1, Lf/a/a/g/d/a/n;

    iget-object v2, p0, Lf/a/a/e/b/T;->b:Lf/a/a/e/b/U;

    invoke-static {v2}, Lf/a/a/e/b/U;->b(Lf/a/a/e/b/U;)Lf/a/a/g/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lf/a/a/g/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lf/a/a/g/d/a/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V

    :goto_0
    return-void
.end method
