.class public final Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;
.super Landroid/widget/RelativeLayout;
.source "DialogButtonLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget v0, Lc/c/a/d/e;->view_dialog_buttons:I

    invoke-static {p1, v0, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    sget-object v0, Lc/c/a/d/h;->DialogButtonLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lc/c/a/d/h;->DialogButtonLayout_commit:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    sget v0, Lc/c/a/d/h;->DialogButtonLayout_cancel:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    sget v1, Lc/c/a/d/h;->DialogButtonLayout_neutral:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const/16 v5, 0x8

    const-string v6, "commitButton"

    if-eqz v4, :cond_2

    .line 8
    sget p2, Lc/c/a/d/d;->commitButton:I

    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {p2, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 9
    :cond_2
    sget v4, Lc/c/a/d/d;->commitButton:I

    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v4, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 10
    sget v4, Lc/c/a/d/d;->commitButton:I

    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v4, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_2
    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->setCancelText(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_3
    const-string p2, "neutralButton"

    if-eqz v2, :cond_5

    .line 13
    sget v0, Lc/c/a/d/d;->neutralButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 14
    :cond_5
    sget v0, Lc/c/a/d/d;->neutralButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 15
    sget v0, Lc/c/a/d/d;->neutralButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final setCancelText(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "cancelButton"

    if-eqz v1, :cond_2

    .line 2
    sget p1, Lc/c/a/d/d;->cancelButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {p1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 3
    :cond_2
    sget v1, Lc/c/a/d/d;->cancelButton:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    sget v0, Lc/c/a/d/d;->cancelButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public final setCommitText(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lc/c/a/d/d;->commitButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "commitButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNeutralText(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lc/c/a/d/d;->neutralButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "neutralButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setOnClickListener(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V
    .locals 2

    const-string v0, "onClickListener"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lc/c/a/d/d;->commitButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lc/c/a/d/h/a;

    invoke-direct {v1, p1}, Lc/c/a/d/h/a;-><init>(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    sget v0, Lc/c/a/d/d;->neutralButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lc/c/a/d/h/b;

    invoke-direct {v1, p1}, Lc/c/a/d/h/b;-><init>(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget v0, Lc/c/a/d/d;->cancelButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lc/c/a/d/h/c;

    invoke-direct {v1, p1}, Lc/c/a/d/h/c;-><init>(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
