.class public Lf/a/a/e/A;
.super Ljava/lang/Object;
.source "VideoPageFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/C;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lir/cafebazaar/inline/ui/SingleLineEditText;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final synthetic c:I

.field public final synthetic d:Lf/a/a/e/C;


# direct methods
.method public constructor <init>(Lf/a/a/e/C;Lir/cafebazaar/inline/ui/SingleLineEditText;Landroidx/appcompat/widget/AppCompatImageView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/A;->d:Lf/a/a/e/C;

    iput-object p2, p0, Lf/a/a/e/A;->a:Lir/cafebazaar/inline/ui/SingleLineEditText;

    iput-object p3, p0, Lf/a/a/e/A;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput p4, p0, Lf/a/a/e/A;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lf/a/a/e/A;->a:Lir/cafebazaar/inline/ui/SingleLineEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, " "

    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lf/a/a/e/A;->a:Lir/cafebazaar/inline/ui/SingleLineEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lf/a/a/e/A;->b:Landroidx/appcompat/widget/AppCompatImageView;

    sget p2, Lf/a/a/d;->inline_ic_send_activate:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 6
    iget-object p1, p0, Lf/a/a/e/A;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 7
    iget-object p1, p0, Lf/a/a/e/A;->a:Lir/cafebazaar/inline/ui/SingleLineEditText;

    iget-object p2, p0, Lf/a/a/e/A;->d:Lf/a/a/e/C;

    .line 8
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object p2

    sget p3, Lf/a/a/d;->inline_bg_submit_comment_activate:I

    invoke-static {p2, p3}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 9
    invoke-static {p1, p2}, Lf/a/a/f/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lf/a/a/e/A;->b:Landroidx/appcompat/widget/AppCompatImageView;

    sget p2, Lf/a/a/d;->inline_ic_send_normal:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 11
    iget-object p1, p0, Lf/a/a/e/A;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p2, p0, Lf/a/a/e/A;->c:I

    invoke-static {p1, p2}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 12
    iget-object p1, p0, Lf/a/a/e/A;->a:Lir/cafebazaar/inline/ui/SingleLineEditText;

    iget-object p2, p0, Lf/a/a/e/A;->d:Lf/a/a/e/C;

    .line 13
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object p2

    sget p3, Lf/a/a/d;->inline_bg_submit_comment_normal:I

    invoke-static {p2, p3}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Lf/a/a/f/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
