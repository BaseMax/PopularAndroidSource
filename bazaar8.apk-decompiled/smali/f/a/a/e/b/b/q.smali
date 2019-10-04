.class public Lf/a/a/e/b/b/q;
.super Ljava/lang/Object;
.source "ControllableInputInflater.java"

# interfaces
.implements Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Lir/cafebazaar/inline/ui/Theme;

.field public final synthetic e:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lir/cafebazaar/inline/ui/Theme;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/q;->e:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;

    iput-object p2, p0, Lf/a/a/e/b/b/q;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lf/a/a/e/b/b/q;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lf/a/a/e/b/b/q;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lf/a/a/e/b/b/q;->d:Lir/cafebazaar/inline/ui/Theme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lf/a/a/e/b/b/q;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;Z)V
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 4
    iget-object p2, p0, Lf/a/a/e/b/b/q;->b:Landroid/widget/TextView;

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->DOWN:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    const/4 v2, 0x4

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lf/a/a/e/b/b/q;->c:Landroid/widget/TextView;

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->UP:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 6
    :cond_2
    new-instance p2, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v2, 0x12c

    .line 7
    invoke-virtual {p2, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 8
    sget-object v2, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->DOWN:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    const/high16 v3, 0x40400000    # 3.0f

    if-ne p1, v2, :cond_3

    .line 9
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {p2, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 10
    :cond_3
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p2, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 11
    :goto_2
    iget-object v2, p0, Lf/a/a/e/b/b/q;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lf/a/a/e/b/b/q;->c:Landroid/widget/TextView;

    sget-object v4, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->DOWN:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    if-ne p1, v4, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {v2, v3, v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;->a(Landroid/view/View;Landroid/view/View;Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 12
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$a;

    iget-object v1, p0, Lf/a/a/e/b/b/q;->b:Landroid/widget/TextView;

    sget-object v2, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->DOWN:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lf/a/a/e/b/b/q;->d:Lir/cafebazaar/inline/ui/Theme;

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v2

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lf/a/a/e/b/b/q;->d:Lir/cafebazaar/inline/ui/Theme;

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/Theme;->e()I

    move-result v2

    :goto_3
    sget-object v3, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->UP:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    if-ne p1, v3, :cond_6

    iget-object v3, p0, Lf/a/a/e/b/b/q;->d:Lir/cafebazaar/inline/ui/Theme;

    .line 13
    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v3

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lf/a/a/e/b/b/q;->d:Lir/cafebazaar/inline/ui/Theme;

    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/Theme;->e()I

    move-result v3

    :goto_4
    invoke-direct {v0, v1, v2, v3}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$a;-><init>(Landroid/widget/TextView;II)V

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 15
    new-instance v0, Lf/a/a/e/b/b/p;

    invoke-direct {v0, p0, p1}, Lf/a/a/e/b/b/p;-><init>(Lf/a/a/e/b/b/q;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 16
    iget-object p1, p0, Lf/a/a/e/b/b/q;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_5
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/q;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/b/q;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
