.class public Lf/a/a/g/g/f;
.super Ljava/lang/Object;
.source "RequestPermissionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/g/h;->a()Lb/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/g/g/h;


# direct methods
.method public constructor <init>(Lf/a/a/g/g/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/g/f;->a:Lf/a/a/g/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v0, p0, Lf/a/a/g/g/f;->a:Lf/a/a/g/g/h;

    invoke-static {v0}, Lf/a/a/g/g/h;->a(Lf/a/a/g/g/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/g/g/e;

    .line 3
    invoke-virtual {v1}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lf/a/a/g/g/f;->a:Lf/a/a/g/g/h;

    invoke-static {v0}, Lf/a/a/g/g/h;->c(Lf/a/a/g/g/h;)Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineUser;->b()Lir/cafebazaar/inline/ux/permission/PermissionManager;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/g/g/f;->a:Lf/a/a/g/g/h;

    invoke-static {v1}, Lf/a/a/g/g/h;->b(Lf/a/a/g/g/h;)Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    iget-object v2, p0, Lf/a/a/g/g/f;->a:Lf/a/a/g/g/h;

    invoke-static {v2}, Lf/a/a/g/g/h;->a(Lf/a/a/g/g/h;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a(Lf/a/a/e/g;Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lf/a/a/g/g/f;->a:Lf/a/a/g/g/h;

    invoke-static {v0}, Lf/a/a/g/g/h;->e(Lf/a/a/g/g/h;)Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineUser;->b()Lir/cafebazaar/inline/ux/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a()Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/g/g/f;->a:Lf/a/a/g/g/h;

    invoke-static {v1}, Lf/a/a/g/g/h;->d(Lf/a/a/g/g/h;)Lf/a/a/e/g;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Lf/a/a/e/g;Ljava/util/Set;)V

    .line 6
    iget-object p1, p0, Lf/a/a/g/g/f;->a:Lf/a/a/g/g/h;

    invoke-static {p1}, Lf/a/a/g/g/h;->f(Lf/a/a/g/g/h;)Lb/b/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
