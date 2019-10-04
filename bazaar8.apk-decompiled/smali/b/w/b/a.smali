.class public final Lb/w/b/a;
.super Lb/w/K;
.source "DialogFragmentNavigator.java"


# annotations
.annotation runtime Lb/w/K$b;
    value = "dialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/w/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/w/K<",
        "Lb/w/b/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb/o/a/n;

.field public c:I

.field public d:Lb/r/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/o/a/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/w/K;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/w/b/a;->c:I

    .line 3
    new-instance v0, Landroidx/navigation/fragment/DialogFragmentNavigator$1;

    invoke-direct {v0, p0}, Landroidx/navigation/fragment/DialogFragmentNavigator$1;-><init>(Lb/w/b/a;)V

    iput-object v0, p0, Lb/w/b/a;->d:Lb/r/i;

    .line 4
    iput-object p1, p0, Lb/w/b/a;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lb/w/b/a;->b:Lb/o/a/n;

    return-void
.end method


# virtual methods
.method public a()Lb/w/b/a$a;
    .locals 1

    .line 3
    new-instance v0, Lb/w/b/a$a;

    invoke-direct {v0, p0}, Lb/w/b/a$a;-><init>(Lb/w/K;)V

    return-object v0
.end method

.method public bridge synthetic a()Lb/w/o;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/w/b/a;->a()Lb/w/b/a$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/w/b/a$a;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;
    .locals 2

    .line 4
    iget-object p3, p0, Lb/w/b/a;->b:Lb/o/a/n;

    invoke-virtual {p3}, Lb/o/a/n;->e()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p1, "DialogFragmentNavigator"

    const-string p2, "Ignoring navigate() call: FragmentManager has already saved its state"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lb/w/b/a$a;->g()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    .line 7
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result p4

    const/16 v0, 0x2e

    if-ne p4, v0, :cond_1

    .line 8
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lb/w/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 9
    :cond_1
    iget-object p4, p0, Lb/w/b/a;->b:Lb/o/a/n;

    invoke-virtual {p4}, Lb/o/a/n;->b()Lb/o/a/l;

    move-result-object p4

    iget-object v0, p0, Lb/w/b/a;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 11
    invoke-virtual {p4, v0, p3}, Lb/o/a/l;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    .line 12
    const-class p4, Lb/o/a/d;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 13
    check-cast p3, Lb/o/a/d;

    .line 14
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p4, p0, Lb/w/b/a;->d:Lb/r/i;

    invoke-virtual {p2, p4}, Landroidx/lifecycle/Lifecycle;->a(Lb/r/j;)V

    .line 16
    iget-object p2, p0, Lb/w/b/a;->b:Lb/o/a/n;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "androidx-nav-fragment:navigator:dialog:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb/w/b/a;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb/w/b/a;->c:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V

    return-object p1

    .line 17
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Dialog destination "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lb/w/b/a$a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an instance of DialogFragment"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic a(Lb/w/o;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;
    .locals 0

    .line 2
    check-cast p1, Lb/w/b/a$a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/w/b/a;->a(Lb/w/b/a$a;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "androidx-nav-dialogfragment:navigator:count"

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lb/w/b/a;->c:I

    .line 19
    :goto_0
    iget p1, p0, Lb/w/b/a;->c:I

    if-ge v0, p1, :cond_1

    .line 20
    iget-object p1, p0, Lb/w/b/a;->b:Lb/o/a/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx-nav-fragment:navigator:dialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v1}, Lb/o/a/n;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lb/o/a/d;

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v1, p0, Lb/w/b/a;->d:Lb/r/i;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/Lifecycle;->a(Lb/r/j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t exist in the FragmentManager"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget v0, p0, Lb/w/b/a;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget v1, p0, Lb/w/b/a;->c:I

    const-string v2, "androidx-nav-dialogfragment:navigator:count"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public c()Z
    .locals 4

    .line 1
    iget v0, p0, Lb/w/b/a;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lb/w/b/a;->b:Lb/o/a/n;

    invoke-virtual {v0}, Lb/o/a/n;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DialogFragmentNavigator"

    const-string v2, "Ignoring popBackStack() call: FragmentManager has already saved its state"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lb/w/b/a;->b:Lb/o/a/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx-nav-fragment:navigator:dialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/w/b/a;->c:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lb/w/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lb/o/a/n;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lb/w/b/a;->d:Lb/r/i;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->b(Lb/r/j;)V

    .line 7
    check-cast v0, Lb/o/a/d;

    invoke-virtual {v0}, Lb/o/a/d;->La()V

    :cond_2
    return v3
.end method
