.class public Lb/o/a/i;
.super Lb/a/c;
.source "FragmentActivity.java"

# interfaces
.implements Lb/i/a/b$a;
.implements Lb/i/a/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/o/a/i$a;
    }
.end annotation


# instance fields
.field public final g:Lb/o/a/k;

.field public final h:Lb/r/m;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:Lb/f/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/a/c;-><init>()V

    .line 2
    new-instance v0, Lb/o/a/i$a;

    invoke-direct {v0, p0}, Lb/o/a/i$a;-><init>(Lb/o/a/i;)V

    invoke-static {v0}, Lb/o/a/k;->a(Lb/o/a/m;)Lb/o/a/k;

    move-result-object v0

    iput-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    .line 3
    new-instance v0, Lb/r/m;

    invoke-direct {v0, p0}, Lb/r/m;-><init>(Lb/r/k;)V

    iput-object v0, p0, Lb/o/a/i;->h:Lb/r/m;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lb/o/a/i;->k:Z

    return-void
.end method

.method public static a(Lb/o/a/n;Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 4

    .line 35
    invoke-virtual {p0}, Lb/o/a/n;->c()Ljava/util/List;

    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->a()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->T:Lb/r/m;

    invoke-virtual {v0, p1}, Lb/r/m;->d(Landroidx/lifecycle/Lifecycle$State;)V

    const/4 v0, 0x1

    .line 39
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->K()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v1

    .line 41
    invoke-static {v1, p1}, Lb/o/a/i;->a(Lb/o/a/n;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static b(I)V
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)I
    .locals 3

    .line 21
    iget-object v0, p0, Lb/o/a/i;->p:Lb/f/j;

    invoke-virtual {v0}, Lb/f/j;->c()I

    move-result v0

    const v1, 0xfffe

    if-ge v0, v1, :cond_1

    .line 22
    :goto_0
    iget-object v0, p0, Lb/o/a/i;->p:Lb/f/j;

    iget v2, p0, Lb/o/a/i;->o:I

    invoke-virtual {v0, v2}, Lb/f/j;->b(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 23
    iget v0, p0, Lb/o/a/i;->o:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Lb/o/a/i;->o:I

    goto :goto_0

    .line 24
    :cond_0
    iget v0, p0, Lb/o/a/i;->o:I

    .line 25
    iget-object v2, p0, Lb/o/a/i;->p:Lb/f/j;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Lb/f/j;->c(ILjava/lang/Object;)V

    .line 26
    iget p1, p0, Lb/o/a/i;->o:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    iput p1, p0, Lb/o/a/i;->o:I

    return v0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many pending Fragment activity results."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/o/a/k;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lb/o/a/i;->l:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4
    invoke-static {p1}, Lb/o/a/i;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lb/o/a/i;->n:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    .line 6
    :try_start_0
    invoke-static {p0, p2, v1, p4}, Lb/i/a/b;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iput-boolean v2, p0, Lb/o/a/i;->n:Z

    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-static {p3}, Lb/o/a/i;->b(I)V

    .line 9
    invoke-virtual {p0, p1}, Lb/o/a/i;->a(Landroidx/fragment/app/Fragment;)I

    move-result p1

    add-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p3, v0

    add-int/2addr p1, p3

    .line 10
    invoke-static {p0, p2, p1, p4}, Lb/i/a/b;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iput-boolean v2, p0, Lb/o/a/i;->n:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v2, p0, Lb/o/a/i;->n:Z

    .line 12
    throw p1
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11
    .param p2    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    move-object v9, p0

    move v0, p3

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v9, Lb/o/a/i;->m:Z

    const/4 v2, -0x1

    const/4 v10, 0x0

    if-ne v0, v2, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 14
    :try_start_0
    invoke-static/range {v1 .. v8}, Lb/i/a/b;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iput-boolean v10, v9, Lb/o/a/i;->m:Z

    return-void

    .line 16
    :cond_0
    :try_start_1
    invoke-static {p3}, Lb/o/a/i;->b(I)V

    .line 17
    invoke-virtual {p0, p1}, Lb/o/a/i;->a(Landroidx/fragment/app/Fragment;)I

    move-result v2

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    add-int v3, v1, v0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 18
    invoke-static/range {v1 .. v8}, Lb/i/a/b;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    iput-boolean v10, v9, Lb/o/a/i;->m:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v10, v9, Lb/o/a/i;->m:Z

    .line 20
    throw v0
.end method

.method public a(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 28
    invoke-static {p0, p2, p3}, Lb/i/a/b;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 29
    :cond_0
    invoke-static {p3}, Lb/o/a/i;->b(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 30
    :try_start_0
    iput-boolean v1, p0, Lb/o/a/i;->l:Z

    .line 31
    invoke-virtual {p0, p1}, Lb/o/a/i;->a(Landroidx/fragment/app/Fragment;)I

    move-result p1

    add-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    const v1, 0xffff

    and-int/2addr p3, v1

    add-int/2addr p1, p3

    .line 32
    invoke-static {p0, p2, p1}, Lb/i/a/b;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iput-boolean v0, p0, Lb/o/a/i;->l:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lb/o/a/i;->l:Z

    .line 34
    throw p1
.end method

.method public a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    .line 4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lb/o/a/i;->i:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, Lb/o/a/i;->j:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, Lb/o/a/i;->k:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p0}, Lb/s/a/a;->a(Lb/r/k;)Lb/s/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lb/s/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->j()Lb/o/a/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/o/a/n;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->k()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget-object v1, p0, Lb/o/a/i;->p:Lb/f/j;

    invoke-virtual {v1, v0}, Lb/f/j;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lb/o/a/i;->p:Lb/f/j;

    invoke-virtual {v2, v0}, Lb/f/j;->d(I)V

    const-string v0, "FragmentActivity"

    if-nez v1, :cond_0

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v2, v1}, Lb/o/a/k;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 7
    invoke-virtual {v2, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    :goto_0
    return-void

    .line 8
    :cond_2
    invoke-static {}, Lb/i/a/b;->a()Lb/i/a/b$b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p0, p1, p2, p3}, Lb/i/a/b$b;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->k()V

    .line 3
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0, p1}, Lb/o/a/k;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/o/a/k;->a(Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "android:support:fragments"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v2, v1}, Lb/o/a/k;->a(Landroid/os/Parcelable;)V

    const-string v1, "android:support:next_request_index"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lb/o/a/i;->o:I

    const-string v1, "android:support:request_indicies"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "android:support:request_fragment_who"

    .line 7
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 8
    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance v3, Lb/f/j;

    array-length v4, v1

    invoke-direct {v3, v4}, Lb/f/j;-><init>(I)V

    iput-object v3, p0, Lb/o/a/i;->p:Lb/f/j;

    const/4 v3, 0x0

    .line 10
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 11
    iget-object v4, p0, Lb/o/a/i;->p:Lb/f/j;

    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Lb/f/j;->c(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "FragmentActivity"

    const-string v2, "Invalid requestCode mapping in savedInstanceState."

    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_2
    iget-object v1, p0, Lb/o/a/i;->p:Lb/f/j;

    if-nez v1, :cond_3

    .line 14
    new-instance v1, Lb/f/j;

    invoke-direct {v1}, Lb/f/j;-><init>()V

    iput-object v1, p0, Lb/o/a/i;->p:Lb/f/j;

    .line 15
    iput v0, p0, Lb/o/a/i;->o:I

    .line 16
    :cond_3
    invoke-super {p0, p1}, Lb/a/c;->onCreate(Landroid/os/Bundle;)V

    .line 17
    iget-object p1, p0, Lb/o/a/i;->h:Lb/r/m;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 18
    iget-object p1, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {p1}, Lb/o/a/k;->b()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lb/o/a/k;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lb/o/a/i;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lb/o/a/i;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->c()V

    .line 3
    iget-object v0, p0, Lb/o/a/i;->h:Lb/r/m;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->d()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object p1, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {p1, p2}, Lb/o/a/k;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_2
    iget-object p1, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {p1, p2}, Lb/o/a/k;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0, p1}, Lb/o/a/k;->a(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {p1}, Lb/o/a/k;->k()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0, p2}, Lb/o/a/k;->a(Landroid/view/Menu;)V

    .line 2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/o/a/i;->j:Z

    .line 3
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->e()V

    .line 4
    iget-object v0, p0, Lb/o/a/i;->h:Lb/r/m;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0, p1}, Lb/o/a/k;->b(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    invoke-virtual {p0}, Lb/o/a/i;->t()V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, p2, p3}, Lb/o/a/i;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object p2, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {p2, p3}, Lb/o/a/k;->b(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->k()V

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget-object v2, p0, Lb/o/a/i;->p:Lb/f/j;

    invoke-virtual {v2, v0}, Lb/f/j;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lb/o/a/i;->p:Lb/f/j;

    invoke-virtual {v3, v0}, Lb/f/j;->d(I)V

    const-string v0, "FragmentActivity"

    if-nez v2, :cond_0

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v3, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v3, v2}, Lb/o/a/k;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    and-int/2addr p1, v1

    .line 7
    invoke-virtual {v3, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/o/a/i;->j:Z

    .line 3
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->k()V

    .line 4
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->i()Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lb/a/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lb/o/a/i;->s()V

    .line 3
    iget-object v0, p0, Lb/o/a/i;->h:Lb/r/m;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 4
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->l()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lb/o/a/i;->p:Lb/f/j;

    invoke-virtual {v0}, Lb/f/j;->c()I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    iget v0, p0, Lb/o/a/i;->o:I

    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-object v0, p0, Lb/o/a/i;->p:Lb/f/j;

    invoke-virtual {v0}, Lb/f/j;->c()I

    move-result v0

    new-array v0, v0, [I

    .line 9
    iget-object v1, p0, Lb/o/a/i;->p:Lb/f/j;

    invoke-virtual {v1}, Lb/f/j;->c()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lb/o/a/i;->p:Lb/f/j;

    invoke-virtual {v3}, Lb/f/j;->c()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 11
    iget-object v3, p0, Lb/o/a/i;->p:Lb/f/j;

    invoke-virtual {v3, v2}, Lb/f/j;->c(I)I

    move-result v3

    aput v3, v0, v2

    .line 12
    iget-object v3, p0, Lb/o/a/i;->p:Lb/f/j;

    invoke-virtual {v3, v2}, Lb/f/j;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "android:support:request_indicies"

    .line 13
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/o/a/i;->k:Z

    .line 3
    iget-boolean v0, p0, Lb/o/a/i;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lb/o/a/i;->i:Z

    .line 5
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->a()V

    .line 6
    :cond_0
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->k()V

    .line 7
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->i()Z

    .line 8
    iget-object v0, p0, Lb/o/a/i;->h:Lb/r/m;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 9
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->g()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->k()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/o/a/i;->k:Z

    .line 3
    invoke-virtual {p0}, Lb/o/a/i;->s()V

    .line 4
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->h()V

    .line 5
    iget-object v0, p0, Lb/o/a/i;->h:Lb/r/m;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public r()Lb/o/a/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->j()Lb/o/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final s()V
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Lb/o/a/i;->a(Lb/o/a/n;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lb/o/a/i;->n:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2
    invoke-static {p2}, Lb/o/a/i;->b(I)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 4
    iget-boolean v0, p0, Lb/o/a/i;->n:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 5
    invoke-static {p2}, Lb/o/a/i;->b(I)V

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lb/o/a/i;->m:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2
    invoke-static {p2}, Lb/o/a/i;->b(I)V

    .line 3
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 4
    iget-boolean v0, p0, Lb/o/a/i;->m:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 5
    invoke-static {p2}, Lb/o/a/i;->b(I)V

    .line 6
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/o/a/i;->h:Lb/r/m;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2
    iget-object v0, p0, Lb/o/a/i;->g:Lb/o/a/k;

    invoke-virtual {v0}, Lb/o/a/k;->f()V

    return-void
.end method

.method public u()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
