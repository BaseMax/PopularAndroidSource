.class public final Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;
.super Lc/c/a/n/u/b/a;
.source "PostVideoCommentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/u/b/a<",
        "Lh/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final Fa:Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment$a;


# instance fields
.field public final Ga:Ljava/lang/String;

.field public Ha:Z

.field public Ia:Lc/c/a/n/j/g/a/a;

.field public Ja:I

.field public Ka:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Fa:Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/u/b/a;-><init>()V

    const-string v0, "postVideoReview"

    .line 2
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ga:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ha:Z

    const v0, 0x7f1001d8

    .line 4
    iput v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ja:I

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ka:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ga:Ljava/lang/String;

    return-object v0
.end method

.method public Ya()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ha:Z

    return v0
.end method

.method public _a()Lcom/farsitel/bazaar/analytics/model/where/PostVideoReviewScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/PostVideoReviewScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/PostVideoReviewScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic _a()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->_a()Lcom/farsitel/bazaar/analytics/model/where/PostVideoReviewScreen;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lc/c/a/f/s;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/s;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ia:Lc/c/a/n/j/g/a/a;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lc/c/a/n/j/g/a/a;->b()Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object p2

    const/16 p3, 0x35

    invoke-virtual {p1, p3, p2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    const-string p2, "FragmentPostCommentBindi\u2026gs.toolbarInfo)\n        }"

    .line 3
    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "postVideoReviewArgs"

    .line 4
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/u/b/a;->b(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->cb()Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060117

    invoke-static {v0, v1}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bb()V
    .locals 6

    .line 1
    invoke-super {p0}, Lc/c/a/n/u/b/a;->bb()V

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/CancelPostVideoReviewButtonClick;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ia:Lc/c/a/n/j/g/a/a;

    const/4 v2, 0x0

    const-string v3, "postVideoReviewArgs"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/n/j/g/a/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ia:Lc/c/a/n/j/g/a/a;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lc/c/a/n/j/g/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/farsitel/bazaar/analytics/model/what/CancelPostVideoReviewButtonClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/a;->a(Lc/c/a/n/c/a/a;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/j/g/a/a;->a:Lc/c/a/n/j/g/a/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/j/g/a/a$a;->a(Landroid/os/Bundle;)Lc/c/a/n/j/g/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ia:Lc/c/a/n/j/g/a/a;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public db()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ja:I

    return v0
.end method

.method public ib()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/g;->Za()Lc/c/a/d/d/c;

    move-result-object v0

    const v1, 0x7f1001df

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lb/o/a/d;->Ma()V

    return-void
.end method

.method public lb()V
    .locals 19

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->nb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/SubmitReviewButtonClick;

    iget-object v0, v6, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ia:Lc/c/a/n/j/g/a/a;

    const/4 v7, 0x0

    const-string v8, "postVideoReviewArgs"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/n/j/g/a/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v6, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ia:Lc/c/a/n/j/g/a/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lc/c/a/n/j/g/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/farsitel/bazaar/analytics/model/what/SubmitReviewButtonClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/a;->a(Lc/c/a/n/c/a/a;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lc/c/a/n/u/b/a;->hb()Lc/c/a/n/u/b/e;

    move-result-object v9

    .line 4
    iget-object v0, v6, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Ia:Lc/c/a/n/j/g/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/j/g/a/a;->c()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lc/c/a/n/u/b/a;->eb()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v13, 0x0

    .line 6
    sget-object v15, Lcom/farsitel/bazaar/data/entity/EntityType;->VIDEO:Lcom/farsitel/bazaar/data/entity/EntityType;

    .line 7
    invoke-virtual/range {p0 .. p0}, Lc/c/a/n/u/b/a;->fb()Z

    move-result v16

    const/16 v17, 0xa

    const/16 v18, 0x0

    .line 8
    invoke-static/range {v9 .. v18}, Lc/c/a/n/u/b/e;->a(Lc/c/a/n/u/b/e;Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;ZILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v8}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v7

    .line 10
    :cond_1
    invoke-static {v8}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v7

    :cond_2
    invoke-static {v8}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v7

    .line 11
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->ob()V

    :goto_0
    return-void
.end method

.method public nb()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->eb()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ob()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->eb()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->eb()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010026

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/u/b/a;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Qa()V

    return-void
.end method
