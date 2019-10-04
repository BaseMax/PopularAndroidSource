.class public final Lc/c/a/d/f/a/a/a;
.super Lc/c/a/d/f/l;
.source "AlertDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/d/f/a/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/d/f/l<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# static fields
.field public static final sa:Lc/c/a/d/f/a/a/a$a;


# instance fields
.field public final ta:Ljava/lang/String;

.field public ua:I

.field public va:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/d/f/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/d/f/a/a/a$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/d/f/a/a/a;->sa:Lc/c/a/d/f/a/a/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/l;-><init>()V

    const-string v0, "AlertDialog"

    .line 2
    iput-object v0, p0, Lc/c/a/d/f/a/a/a;->ta:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lc/c/a/d/f/a/a/a;->va:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/a/a/a;->ta:Ljava/lang/String;

    return-object v0
.end method

.method public Ta()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/f/a/a/a;->ua:I

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lc/c/a/d/e;->dialog_alert:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lc/c/a/c/b/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget v0, Lc/c/a/d/d;->iconImageView:I

    invoke-virtual {p0, v0}, Lc/c/a/d/f/a/a/a;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 5
    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_1

    .line 7
    :cond_1
    sget p1, Lc/c/a/d/d;->iconImageView:I

    invoke-virtual {p0, p1}, Lc/c/a/d/f/a/a/a;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "iconImageView"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 8
    :goto_1
    sget p1, Lc/c/a/d/d;->description:I

    invoke-virtual {p0, p1}, Lc/c/a/d/f/a/a/a;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "description"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p2, "message"

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "commitText"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    sget p2, Lc/c/a/d/d;->dialogButtonLayout:I

    invoke-virtual {p0, p2}, Lc/c/a/d/f/a/a/a;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;

    invoke-virtual {p2, p1}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->setCommitText(Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "cancelText"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    sget p2, Lc/c/a/d/d;->dialogButtonLayout:I

    invoke-virtual {p0, p2}, Lc/c/a/d/f/a/a/a;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;

    invoke-virtual {p2, p1}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->setCancelText(Ljava/lang/String;)V

    .line 11
    :cond_4
    sget p1, Lc/c/a/d/d;->dialogButtonLayout:I

    invoke-virtual {p0, p1}, Lc/c/a/d/f/a/a/a;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;

    new-instance p2, Lc/c/a/d/f/a/a/b;

    invoke-direct {p2, p0}, Lc/c/a/d/f/a/a/b;-><init>(Lc/c/a/d/f/a/a/a;)V

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->setOnClickListener(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lc/c/a/d/f/a/a/a;->va:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/d/f/a/a/a;->va:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lc/c/a/d/f/a/a/a;->va:Ljava/util/HashMap;

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

    iget-object v1, p0, Lc/c/a/d/f/a/a/a;->va:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc/c/a/d/f/r;->onCancel()V

    :cond_0
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/l;->qa()V

    invoke-virtual {p0}, Lc/c/a/d/f/a/a/a;->Qa()V

    return-void
.end method
