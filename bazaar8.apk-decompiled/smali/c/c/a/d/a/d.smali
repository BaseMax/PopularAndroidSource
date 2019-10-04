.class public final Lc/c/a/d/a/d;
.super Ljava/lang/Object;
.source "PermissionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/d/a/d$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/d/a/d$a;


# instance fields
.field public final b:Lc/c/a/d/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/d/a/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/d/a/d$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/d/a/d;->a:Lc/c/a/d/a/d$a;

    return-void
.end method

.method public constructor <init>(Lc/c/a/d/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/d/a/d;->b:Lc/c/a/d/a/c;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/core/app/Permission;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/core/app/Permission;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/farsitel/bazaar/core/app/Permission;

    .line 19
    invoke-virtual {v2}, Lcom/farsitel/bazaar/core/app/Permission;->f()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {p1, v2}, Lb/i/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 21
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a(I[Ljava/lang/String;[ILandroid/app/Activity;)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/farsitel/bazaar/core/app/PermissionManager$onRequestPermissionsResult$2;

    invoke-direct {v0, p4}, Lcom/farsitel/bazaar/core/app/PermissionManager$onRequestPermissionsResult$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lc/c/a/d/a/d;->a(I[Ljava/lang/String;[ILh/f/a/b;)V

    return-void
.end method

.method public final a(I[Ljava/lang/String;[ILandroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/farsitel/bazaar/core/app/PermissionManager$onRequestPermissionsResult$1;

    invoke-direct {v0, p4}, Lcom/farsitel/bazaar/core/app/PermissionManager$onRequestPermissionsResult$1;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lc/c/a/d/a/d;->a(I[Ljava/lang/String;[ILh/f/a/b;)V

    return-void
.end method

.method public final a(I[Ljava/lang/String;[ILh/f/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "[I",
            "Lh/f/a/b<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 11
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    .line 12
    aget v3, p3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 13
    invoke-interface {p4, v2}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 14
    iget-object p2, p0, Lc/c/a/d/a/d;->b:Lc/c/a/d/a/c;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lc/c/a/d/a/c;->a(I)V

    goto :goto_1

    .line 15
    :cond_0
    iget-object p2, p0, Lc/c/a/d/a/d;->b:Lc/c/a/d/a/c;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lc/c/a/d/a/c;->c(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_3
    iget-object p2, p0, Lc/c/a/d/a/d;->b:Lc/c/a/d/a/c;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lc/c/a/d/a/c;->b(I)V

    :cond_4
    return-void
.end method

.method public final a(Ljava/util/List;Landroid/app/Activity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/core/app/Permission;",
            ">;",
            "Landroid/app/Activity;",
            "I)V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/core/app/PermissionManager$askForPermissions$2;

    invoke-direct {v0, p2, p3}, Lcom/farsitel/bazaar/core/app/PermissionManager$askForPermissions$2;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, p1, p2, v0, p3}, Lc/c/a/d/a/d;->a(Ljava/util/List;Landroid/content/Context;Lh/f/a/b;I)V

    return-void
.end method

.method public final a(Ljava/util/List;Landroid/content/Context;Lh/f/a/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/core/app/Permission;",
            ">;",
            "Landroid/content/Context;",
            "Lh/f/a/b<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/core/app/Permission;",
            ">;",
            "Lh/h;",
            ">;I)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p2, p1}, Lc/c/a/d/a/d;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p1, p0, Lc/c/a/d/a/d;->b:Lc/c/a/d/a/c;

    if-eqz p1, :cond_1

    invoke-interface {p1, p4}, Lc/c/a/d/a/c;->b(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p3, p1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/List;Landroidx/fragment/app/Fragment;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/core/app/Permission;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            "I)V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fragment.requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/farsitel/bazaar/core/app/PermissionManager$askForPermissions$1;

    invoke-direct {v1, p2, p3}, Lcom/farsitel/bazaar/core/app/PermissionManager$askForPermissions$1;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0, p1, v0, v1, p3}, Lc/c/a/d/a/d;->a(Ljava/util/List;Landroid/content/Context;Lh/f/a/b;I)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/core/app/Permission;Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/app/Permission;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Lcom/farsitel/bazaar/core/app/Permission;Landroidx/fragment/app/Fragment;)Z
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/app/Permission;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Lcom/farsitel/bazaar/core/app/Permission;Landroid/app/Activity;)Z
    .locals 2

    const-string v0, "permission"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/app/Permission;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
