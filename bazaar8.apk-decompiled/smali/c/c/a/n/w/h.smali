.class public final Lc/c/a/n/w/h;
.super Ljava/lang/Object;
.source "SearchFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/search/SearchFragment;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/search/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/w/h;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_2

    .line 2
    iget-object p1, p0, Lc/c/a/n/w/h;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    sget v0, Lc/c/a/e;->clearSearchInputButton:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 3
    :cond_1
    iget-object p1, p0, Lc/c/a/n/w/h;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    sget v0, Lc/c/a/e;->voiceSearchButton:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object p1, p0, Lc/c/a/n/w/h;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    sget v0, Lc/c/a/e;->clearSearchInputButton:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 5
    :cond_3
    iget-object p1, p0, Lc/c/a/n/w/h;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    sget v0, Lc/c/a/e;->voiceSearchButton:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lc/c/a/n/w/h;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lc/c/a/n/w/h;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {p2}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->c(Lcom/farsitel/bazaar/ui/search/SearchFragment;)Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lc/c/a/n/w/h;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {p2}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(Lcom/farsitel/bazaar/ui/search/SearchFragment;)Lc/c/a/n/w/c;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lc/c/a/n/w/c;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lc/c/a/n/w/h;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Z)V

    .line 4
    iget-object p2, p0, Lc/c/a/n/w/h;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {p2}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->f(Lcom/farsitel/bazaar/ui/search/SearchFragment;)Lc/c/a/n/w/q;

    move-result-object p2

    invoke-virtual {p2, p1}, Lc/c/a/n/w/q;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
