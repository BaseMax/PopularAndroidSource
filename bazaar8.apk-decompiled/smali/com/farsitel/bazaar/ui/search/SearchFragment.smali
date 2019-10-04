.class public final Lcom/farsitel/bazaar/ui/search/SearchFragment;
.super Lc/c/a/n/c/c/n;
.source "SearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;,
        Lcom/farsitel/bazaar/ui/search/SearchFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/c/n<",
        "Lc/c/a/n/w/l;",
        "Lc/c/a/n/w/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final za:Lcom/farsitel/bazaar/ui/search/SearchFragment$a;


# instance fields
.field public Aa:Ljava/lang/String;

.field public Ba:Lc/c/a/n/w/c;

.field public Ca:Lc/c/a/n/w/n;

.field public Da:Z

.field public Ea:Lc/c/a/n/w/l;

.field public Fa:I

.field public Ga:I

.field public Ha:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

.field public final Ia:Lc/c/a/n/w/o;

.field public Ja:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/ui/search/SearchFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/search/SearchFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->za:Lcom/farsitel/bazaar/ui/search/SearchFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/c/n;-><init>()V

    const v0, 0x7f0d0068

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Fa:I

    const v0, 0x7f0d0041

    .line 3
    iput v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ga:I

    .line 4
    sget-object v0, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->PREDICTION_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ha:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    .line 5
    new-instance v0, Lc/c/a/n/w/k;

    invoke-direct {v0, p0}, Lc/c/a/n/w/k;-><init>(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ia:Lc/c/a/n/w/o;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->zb()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->c(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Aa:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_1

    .line 21
    sget p1, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :cond_1
    :goto_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_2

    const/4 p2, 0x0

    :cond_2
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_3

    .line 22
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p3

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Da:Z

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Cb()V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/search/SearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/search/SearchFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Da:Z

    return p0
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/ui/search/SearchFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Aa:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "queryBeforeTextChange"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic e(Lcom/farsitel/bazaar/ui/search/SearchFragment;)Lc/c/a/n/w/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ba:Lc/c/a/n/w/c;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "searchBoxViewModel"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic f(Lcom/farsitel/bazaar/ui/search/SearchFragment;)Lc/c/a/n/w/q;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p0

    check-cast p0, Lc/c/a/n/w/q;

    return-object p0
.end method


# virtual methods
.method public final Ab()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/w/c;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast v0, Lc/c/a/n/w/c;

    .line 4
    invoke-virtual {v0}, Lc/c/a/n/w/c;->g()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/farsitel/bazaar/ui/search/SearchFragment$createSearchBoxViewModel$$inlined$createViewModel$lambda$1;

    invoke-direct {v2, p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment$createSearchBoxViewModel$$inlined$createViewModel$lambda$1;-><init>(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V

    invoke-static {p0, v1, v2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 5
    sget-object v1, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->PREDICTION_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V

    const-string v1, ""

    .line 6
    invoke-virtual {v0, v1}, Lc/c/a/n/w/c;->a(Ljava/lang/String;)V

    .line 7
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ba:Lc/c/a/n/w/c;

    return-void
.end method

.method public final Bb()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->backButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/RTLImageView;

    const-string v1, "backButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 2
    sget v0, Lc/c/a/e;->searchButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/RTLImageView;

    const-string v1, "searchButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    return-void
.end method

.method public final Cb()V
    .locals 14

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object v1, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/e/d/u/a;->n()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.speech.extra.LANGUAGE"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.LANGUAGE_PREFERENCE"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f10022b

    .line 7
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x11e0

    .line 8
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9
    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/IsVoiceSearchFeasible;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Lcom/farsitel/bazaar/analytics/model/what/IsVoiceSearchFeasible;-><init>(Z)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    new-instance v9, Lcom/farsitel/bazaar/analytics/model/what/IsVoiceSearchFeasible;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/farsitel/bazaar/analytics/model/what/IsVoiceSearchFeasible;-><init>(Z)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Qa()Lc/c/a/d/d/c;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10022a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final Db()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->searchButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/RTLImageView;

    const-string v1, "searchButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 2
    sget v0, Lc/c/a/e;->backButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/RTLImageView;

    const-string v1, "backButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    return-void
.end method

.method public final Eb()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/w/f;

    invoke-direct {v0, p0}, Lc/c/a/n/w/f;-><init>(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V

    return-object v0
.end method

.method public final Fb()V
    .locals 3

    .line 1
    new-instance v0, Lc/c/a/n/w/n;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ia:Lc/c/a/n/w/o;

    invoke-direct {v0, v1}, Lc/c/a/n/w/n;-><init>(Lc/c/a/n/w/o;)V

    .line 2
    new-instance v1, Lc/c/a/n/w/g;

    invoke-direct {v1, p0}, Lc/c/a/n/w/g;-><init>(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/d/m;)V

    .line 3
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ca:Lc/c/a/n/w/n;

    .line 4
    sget v0, Lc/c/a/e;->searchAutocompleteRecyclerView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 6
    sget v1, Lc/c/a/e;->searchAutocompleteRecyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "searchAutocompleteRecyclerView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ca:Lc/c/a/n/w/n;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    :cond_0
    const-string v0, "searchHistoryAdapter"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Gb()Lc/c/a/n/w/q;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/w/q;

    .line 2
    invoke-virtual {v0}, Lc/c/a/n/w/q;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lc/c/a/n/w/q;->a(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lc/c/a/n/w/q;->q()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lh/k/m;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_6

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/n/w/l;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 6
    sget-object v1, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->PREDICTION_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V

    goto :goto_2

    .line 7
    :cond_5
    sget-object v1, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->SHOWING_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V

    .line 8
    :goto_2
    invoke-virtual {v0}, Lc/c/a/n/w/q;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/n/w/l;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Lh/k/m;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    if-eqz v2, :cond_9

    .line 10
    sget-object v1, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->PREDICTION_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V

    .line 11
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/n/w/l;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 12
    :cond_9
    sget-object v1, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->SHOWING_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V

    .line 13
    invoke-virtual {v0}, Lc/c/a/n/w/q;->q()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 14
    invoke-virtual {v0}, Lc/c/a/n/w/q;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 15
    :cond_a
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/n/w/l;->a()Ljava/lang/String;

    move-result-object v1

    .line 16
    :goto_3
    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ja:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/SearchScreen;
    .locals 3

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/SearchScreen;

    sget v1, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v2, "searchEditText"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/analytics/model/where/SearchScreen;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/SearchScreen;

    move-result-object v0

    return-object v0
.end method

.method public Wa()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ga:I

    return v0
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Fa:I

    return v0
.end method

.method public Za()Lc/c/a/n/w/l;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ea:Lc/c/a/n/w/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "searchFragmentArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 6

    .line 31
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    const/16 v0, 0x11e0

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "android.speech.extra.RESULTS"

    .line 32
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    .line 33
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 34
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/VoiceSearchClick;

    const-string p2, "spokenText"

    .line 35
    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object p2

    invoke-virtual {p2}, Lc/c/a/n/w/l;->b()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p2

    .line 37
    :goto_0
    invoke-direct {v1, p1, p1, p2}, Lcom/farsitel/bazaar/analytics/model/what/VoiceSearchClick;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 38
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x7

    .line 40
    invoke-static/range {v0 .. v5}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/c/n;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Fb()V

    .line 9
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ab()V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V
    .locals 2

    .line 10
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ha:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    .line 11
    sget-object v0, Lc/c/a/n/w/e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "searchAutocompleteRecyclerView"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    sget p1, Lc/c/a/e;->searchAutocompleteRecyclerView:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_0

    .line 14
    :cond_1
    sget p1, Lc/c/a/e;->searchAutocompleteRecyclerView:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V
    .locals 8

    .line 23
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ca:Lc/c/a/n/w/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, -0x1

    .line 24
    invoke-virtual {v0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    .line 25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_1

    check-cast v5, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;

    .line 26
    invoke-virtual {v5}, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    :cond_0
    move v4, v6

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    throw v1

    :cond_2
    if-ltz v2, :cond_3

    .line 28
    invoke-virtual {v0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$a;->e(I)V

    :cond_3
    return-void

    :cond_4
    const-string p1, "searchHistoryAdapter"

    .line 30
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Section:",
            "Ljava/lang/Object;",
            ">(TSection;)V"
        }
    .end annotation

    .line 16
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/w/l;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;->getSlug()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :cond_1
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/w/l;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;->getSlug()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_3
    invoke-super {p0, p1}, Lc/c/a/n/c/c/n;->a(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 4
    sget-object v1, Lc/c/a/n/w/m;->a:Lc/c/a/n/w/m$a;

    invoke-virtual {v1, p1, p2, p3}, Lc/c/a/n/w/m$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lc/c/a/n/w/l;->a:Lc/c/a/n/w/l$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/w/l$a;->a(Landroid/os/Bundle;)Lc/c/a/n/w/l;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ea:Lc/c/a/n/w/l;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1}, Lc/c/a/n/c/d/f;->c(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Eb()Landroid/view/View$OnClickListener;

    move-result-object p1

    .line 8
    sget v0, Lc/c/a/e;->voiceSearchButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget v0, Lc/c/a/e;->clearSearchInputButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget v0, Lc/c/a/e;->backButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/RTLImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget v0, Lc/c/a/e;->searchButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/RTLImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget p1, Lc/c/a/e;->searchAutocompleteRecyclerView:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "searchAutocompleteRecyclerView"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 13
    sget p1, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 14
    sget p1, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v0, Lc/c/a/n/w/h;

    invoke-direct {v0, p0}, Lc/c/a/n/w/h;-><init>(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 15
    sget p1, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v0, Lc/c/a/n/w/i;

    invoke-direct {v0, p0}, Lc/c/a/n/w/i;-><init>(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 16
    sget p1, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v0, Lc/c/a/n/w/j;

    invoke-direct {v0, p0}, Lc/c/a/n/w/j;-><init>(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/w/l;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object p1

    sget v0, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {p1, v0}, Lf/a/a/f/f;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final c(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6

    .line 34
    sget v0, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 35
    invoke-static {p1}, Lc/c/a/c/b/i;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 37
    :cond_1
    sget v0, Lc/c/a/e;->searchEmptyTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "searchEmptyTextView"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1001b1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    if-eqz p1, :cond_2

    invoke-static {p1}, Lh/k/n;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_5

    .line 38
    invoke-static {p1}, Lh/k/m;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 39
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Db()V

    goto :goto_3

    .line 40
    :cond_6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Bb()V

    :goto_3
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 19
    sget v0, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/w/l;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lh/k/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ba:Lc/c/a/n/w/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Lc/c/a/n/w/c;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "searchBoxViewModel"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v4

    .line 22
    :cond_4
    :goto_2
    new-instance v6, Lcom/farsitel/bazaar/analytics/model/what/PerformNewSearchEvent;

    if-eqz p2, :cond_5

    move-object v3, p2

    :cond_5
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p1, v3, v0}, Lcom/farsitel/bazaar/analytics/model/what/PerformNewSearchEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 23
    invoke-static {p1}, Lh/k/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const v3, 0x7f010026

    if-nez v0, :cond_9

    .line 24
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/w/q;

    invoke-virtual {v0, p1}, Lc/c/a/n/w/q;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    new-instance v0, Lc/c/a/n/w/l;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lc/c/a/n/w/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object v3

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_7

    if-eqz p3, :cond_6

    goto :goto_3

    .line 26
    :cond_6
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/w/q;

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p2

    check-cast p2, Lc/c/a/n/w/q;

    invoke-virtual {p2}, Lc/c/a/n/w/q;->q()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/c/a/n/w/q;->b(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 28
    :cond_7
    sget-object p1, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->SHOWING_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V

    .line 29
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->l(I)V

    .line 30
    :goto_4
    invoke-static {p0, v4, v2, v4}, Lc/c/a/d/b/f;->a(Landroidx/fragment/app/Fragment;Landroid/os/IBinder;ILjava/lang/Object;)V

    goto :goto_5

    .line 31
    :cond_8
    sget p1, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object p2

    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 32
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Qa()Lc/c/a/d/d/c;

    move-result-object p1

    const p2, 0x7f100074

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 33
    :cond_9
    sget p1, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object p2

    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_5
    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ja:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ja:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ja:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ja:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ca:Lc/c/a/n/w/n;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/a;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string p1, "searchHistoryAdapter"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->f(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Gb()Lc/c/a/n/w/q;

    return-void
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->jb()Lc/c/a/n/w/q;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/w/q;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/w/q;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/w/q;

    return-object v0
.end method

.method public m()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/w/l;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ha:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    sget-object v2, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->PREDICTION_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    if-ne v0, v2, :cond_2

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->SHOWING_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V

    goto :goto_2

    .line 3
    :cond_2
    invoke-super {p0}, Lc/c/a/d/f/o;->m()Z

    move-result v1

    :goto_2
    return v1
.end method

.method public mb()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    .line 2
    invoke-super {p0}, Lc/c/a/n/c/d/f;->mb()V

    :cond_1
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/c/n;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->La()V

    return-void
.end method

.method public final zb()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    sget v1, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0, v1}, Lf/a/a/f/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 3
    sget v0, Lc/c/a/e;->searchEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, "searchEditText"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Ca:Lc/c/a/n/w/n;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/a;->a(Ljava/util/ArrayList;)V

    .line 5
    sget-object v0, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->PREDICTION_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V

    return-void

    :cond_1
    const-string v0, "searchHistoryAdapter"

    .line 6
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
