.class public final Lc/e/a/c/e/b;
.super Lb/b/f/a/k;
.source "BottomNavigationMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/b/f/a/k;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/b/f/a/k;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lb/b/f/a/k;->s()V

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lb/b/f/a/k;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 4
    instance-of p2, p1, Lb/b/f/a/o;

    if-eqz p2, :cond_0

    .line 5
    move-object p2, p1

    check-cast p2, Lb/b/f/a/o;

    invoke-virtual {p2, v1}, Lb/b/f/a/o;->c(Z)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lb/b/f/a/k;->r()V

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "BottomNavigationView does not support submenus"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
