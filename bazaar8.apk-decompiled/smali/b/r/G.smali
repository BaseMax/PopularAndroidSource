.class public Lb/r/G;
.super Ljava/lang/Object;
.source "ViewModelProviders.java"


# direct methods
.method public static a(Landroidx/fragment/app/Fragment;)Landroid/app/Activity;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t create ViewModelProvider for detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/app/Activity;)Landroid/app/Application;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity/fragment is not yet attached to Application. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;
    .locals 1

    .line 5
    invoke-static {p0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lb/r/G;->a(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    if-nez p1, :cond_0

    .line 6
    invoke-static {v0}, Lb/r/F$a;->a(Landroid/app/Application;)Lb/r/F$a;

    move-result-object p1

    .line 7
    :cond_0
    new-instance v0, Lb/r/F;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->e()Lb/r/H;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lb/r/F;-><init>(Lb/r/H;Lb/r/F$b;)V

    return-object v0
.end method

.method public static a(Lb/o/a/i;Lb/r/F$b;)Lb/r/F;
    .locals 1

    .line 8
    invoke-static {p0}, Lb/r/G;->a(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    if-nez p1, :cond_0

    .line 9
    invoke-static {v0}, Lb/r/F$a;->a(Landroid/app/Application;)Lb/r/F$a;

    move-result-object p1

    .line 10
    :cond_0
    new-instance v0, Lb/r/F;

    invoke-virtual {p0}, Lb/a/c;->e()Lb/r/H;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lb/r/F;-><init>(Lb/r/H;Lb/r/F$b;)V

    return-object v0
.end method
