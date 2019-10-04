.class public Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;
.super Lc/c/a/n/c/c/n;
.source "FehrestFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/c/n<",
        "Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;",
        "Lc/c/a/n/l/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final za:Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment$a;


# instance fields
.field public Aa:I

.field public Ba:Z

.field public Ca:Z

.field public Da:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->za:Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/c/n;-><init>()V

    const v0, 0x7f0d0051

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Aa:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Ba:Z

    .line 4
    iput-boolean v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Ca:Z

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Da:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/PageScreen;
    .locals 2

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/PageScreen;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Za()Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/analytics/model/where/PageScreen;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/PageScreen;

    move-result-object v0

    return-object v0
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Aa:I

    return v0
.end method

.method public Za()Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "arg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.farsitel.bazaar.ui.fehrest.FehrestParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Za()Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Za()Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->b()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->k(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->zb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lc/c/a/n/c/d/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p3, 0x7f0d0051

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Ca:Z

    return v0
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Da:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Da:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Da:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Da:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Ba:Z

    return v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->jb()Lc/c/a/n/l/i;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/l/i;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/l/i;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/l/i;

    return-object v0
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Ca:Z

    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/c/n;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->La()V

    return-void
.end method

.method public ta()V
    .locals 6

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/a/b;->ta()V

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PageVisit;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Za()Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->getReferrer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lcom/farsitel/bazaar/analytics/model/what/PageVisit;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final zb()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->Ya()I

    move-result v0

    const v1, 0x7f0d0051

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
