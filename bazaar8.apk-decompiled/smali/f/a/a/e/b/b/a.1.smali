.class public Lf/a/a/e/b/b/a;
.super Ljava/lang/Object;
.source "AddressInputInflater.java"

# interfaces
.implements Lf/a/a/e/b/b/B$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/g;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

.field public final synthetic d:Landroid/content/res/ColorStateList;

.field public final synthetic e:Landroid/content/res/ColorStateList;

.field public final synthetic f:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;Lf/a/a/e/g;Landroid/view/View;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/a;->f:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;

    iput-object p2, p0, Lf/a/a/e/b/b/a;->a:Lf/a/a/e/g;

    iput-object p3, p0, Lf/a/a/e/b/b/a;->b:Landroid/view/View;

    iput-object p4, p0, Lf/a/a/e/b/b/a;->c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    iput-object p5, p0, Lf/a/a/e/b/b/a;->d:Landroid/content/res/ColorStateList;

    iput-object p6, p0, Lf/a/a/e/b/b/a;->e:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/a;->f:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;)Lf/a/a/g/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/a/e/b/b/a;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    sget v1, Lf/a/a/g;->select_something:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lf/a/a/e/b/b/a;->b:Landroid/view/View;

    iget-object v2, p0, Lf/a/a/e/b/b/a;->a:Lf/a/a/e/g;

    invoke-interface {v2}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v2

    sget v3, Lf/a/a/a;->wrong_field:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object v1, p0, Lf/a/a/e/b/b/a;->c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    invoke-interface {v1, v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;->a(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lf/a/a/e/b/b/a;->b:Landroid/view/View;

    iget-object v2, p0, Lf/a/a/e/b/b/a;->d:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Lb/i/k/z;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lf/a/a/e/b/b/a;->c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    invoke-interface {v1}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;->a()V

    .line 6
    iget-object v1, p0, Lf/a/a/e/b/b/a;->b:Landroid/view/View;

    iget-object v2, p0, Lf/a/a/e/b/b/a;->e:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Lb/i/k/z;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :goto_1
    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/a;->f:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;)Lf/a/a/g/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/e/b/b/a;->f:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;)Lf/a/a/g/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/a/a;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
