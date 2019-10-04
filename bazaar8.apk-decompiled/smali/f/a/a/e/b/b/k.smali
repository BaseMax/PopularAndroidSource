.class public Lf/a/a/e/b/b/k;
.super Ljava/lang/Object;
.source "ChoicesInflater.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/l;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

.field public final synthetic c:Lf/a/a/e/b/b/o;

.field public final synthetic d:Lf/a/a/e/g;

.field public final synthetic e:Lf/a/a/e/b/b/l;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/l;Landroid/widget/TextView;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;Lf/a/a/e/b/b/o;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/k;->e:Lf/a/a/e/b/b/l;

    iput-object p2, p0, Lf/a/a/e/b/b/k;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lf/a/a/e/b/b/k;->b:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    iput-object p4, p0, Lf/a/a/e/b/b/k;->c:Lf/a/a/e/b/b/o;

    iput-object p5, p0, Lf/a/a/e/b/b/k;->d:Lf/a/a/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lf/a/a/e/b/b/k;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lf/a/a/e/b/b/k;->b:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->UP:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    invoke-interface {p2, v0, p1}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lf/a/a/e/b/b/k;->a:Landroid/widget/TextView;

    sget p2, Lf/a/a/d;->inline_edittext_background_forced_focus:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    iget-object p1, p0, Lf/a/a/e/b/b/k;->c:Lf/a/a/e/b/b/o;

    iget-object p2, p0, Lf/a/a/e/b/b/k;->d:Lf/a/a/e/g;

    invoke-interface {p2}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lf/a/a/e/b/b/k;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0}, Lf/a/a/e/b/b/A;->a(Landroidx/core/widget/NestedScrollView;Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lf/a/a/e/b/b/k;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lf/a/a/e/b/b/k;->b:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->DOWN:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    invoke-interface {p2, v0, p1}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;Z)V

    .line 7
    :cond_2
    iget-object p1, p0, Lf/a/a/e/b/b/k;->a:Landroid/widget/TextView;

    sget p2, Lf/a/a/d;->inline_edittext_background:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 8
    iget-object p1, p0, Lf/a/a/e/b/b/k;->c:Lf/a/a/e/b/b/o;

    invoke-virtual {p1}, Lf/a/a/e/b/b/A;->a()V

    :goto_0
    return-void
.end method
