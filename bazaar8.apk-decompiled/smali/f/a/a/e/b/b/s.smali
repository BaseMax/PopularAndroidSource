.class public Lf/a/a/e/b/b/s;
.super Ljava/lang/Object;
.source "EditTextInflater.java"

# interfaces
.implements Lf/a/a/e/b/b/B$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

.field public final synthetic b:Lf/a/a/e/g;

.field public final synthetic c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

.field public final synthetic d:Landroid/content/res/ColorStateList;

.field public final synthetic e:Landroid/content/res/ColorStateList;

.field public final synthetic f:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/s;->f:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;

    iput-object p2, p0, Lf/a/a/e/b/b/s;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

    iput-object p3, p0, Lf/a/a/e/b/b/s;->b:Lf/a/a/e/g;

    iput-object p4, p0, Lf/a/a/e/b/b/s;->c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    iput-object p5, p0, Lf/a/a/e/b/b/s;->d:Landroid/content/res/ColorStateList;

    iput-object p6, p0, Lf/a/a/e/b/b/s;->e:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/s;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/e/b/b/s;->f:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;

    invoke-static {v1}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lf/a/a/d/g;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lf/a/a/e/b/b/s;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

    iget-object v2, p0, Lf/a/a/e/b/b/s;->b:Lf/a/a/e/g;

    invoke-interface {v2}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v2

    sget v3, Lf/a/a/a;->wrong_field:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object v1, p0, Lf/a/a/e/b/b/s;->c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    invoke-interface {v1, v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;->a(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lf/a/a/e/b/b/s;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

    iget-object v2, p0, Lf/a/a/e/b/b/s;->d:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Lb/i/k/z;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lf/a/a/e/b/b/s;->c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    invoke-interface {v1}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;->a()V

    .line 6
    iget-object v1, p0, Lf/a/a/e/b/b/s;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

    iget-object v2, p0, Lf/a/a/e/b/b/s;->e:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Lb/i/k/z;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/s;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
