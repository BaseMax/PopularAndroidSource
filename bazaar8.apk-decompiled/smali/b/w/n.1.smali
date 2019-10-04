.class public final Lb/w/n;
.super Ljava/lang/Object;
.source "NavDeepLinkBuilder.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/Intent;

.field public c:Lb/w/r;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/w/n;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p0, Lb/w/n;->a:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lb/w/n;->b:Landroid/content/Intent;

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lb/w/n;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_0
    iput-object p1, p0, Lb/w/n;->b:Landroid/content/Intent;

    .line 9
    :goto_1
    iget-object p1, p0, Lb/w/n;->b:Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lb/w/j;)V
    .locals 1

    .line 10
    invoke-virtual {p1}, Lb/w/j;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/w/n;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p1}, Lb/w/j;->e()Lb/w/r;

    move-result-object p1

    iput-object p1, p0, Lb/w/n;->c:Lb/w/r;

    return-void
.end method


# virtual methods
.method public a()Lb/i/a/t;
    .locals 5

    .line 4
    iget-object v0, p0, Lb/w/n;->b:Landroid/content/Intent;

    const-string v1, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lb/w/n;->c:Lb/w/r;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setGraph() before constructing the deep link"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setDestination() before constructing the deep link"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    iget-object v0, p0, Lb/w/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lb/i/a/t;->a(Landroid/content/Context;)Lb/i/a/t;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lb/w/n;->b:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 9
    invoke-virtual {v0, v1}, Lb/i/a/t;->b(Landroid/content/Intent;)Lb/i/a/t;

    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {v0}, Lb/i/a/t;->a()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Lb/i/a/t;->a(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lb/w/n;->b:Landroid/content/Intent;

    const-string v4, "android-support-nav:controller:deepLinkIntent"

    .line 12
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public a(I)Lb/w/n;
    .locals 0

    .line 1
    iput p1, p0, Lb/w/n;->d:I

    .line 2
    iget-object p1, p0, Lb/w/n;->c:Lb/w/r;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/w/n;->b()V

    :cond_0
    return-object p0
.end method

.method public final b()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 2
    iget-object v1, p0, Lb/w/n;->c:Lb/w/r;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/w/o;

    .line 5
    invoke-virtual {v2}, Lb/w/o;->d()I

    move-result v3

    iget v4, p0, Lb/w/n;->d:I

    if-ne v3, v4, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 6
    :cond_1
    instance-of v3, v2, Lb/w/r;

    if-eqz v3, :cond_0

    .line 7
    check-cast v2, Lb/w/r;

    invoke-virtual {v2}, Lb/w/r;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/w/o;

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 9
    iget-object v0, p0, Lb/w/n;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Lb/w/o;->a()[I

    move-result-object v1

    const-string v2, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Lb/w/n;->a:Landroid/content/Context;

    iget v1, p0, Lb/w/n;->d:I

    invoke-static {v0, v1}, Lb/w/o;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigation destination "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is unknown to this NavController"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
