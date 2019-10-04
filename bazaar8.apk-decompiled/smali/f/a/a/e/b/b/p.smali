.class public Lf/a/a/e/b/b/p;
.super Ljava/lang/Object;
.source "ControllableInputInflater.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/q;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

.field public final synthetic b:Lf/a/a/e/b/b/q;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/q;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/p;->b:Lf/a/a/e/b/b/q;

    iput-object p2, p0, Lf/a/a/e/b/b/p;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/b/p;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->UP:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/b/p;->b:Lf/a/a/e/b/b/q;

    iget-object p1, p1, Lf/a/a/e/b/b/q;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lf/a/a/e/b/b/p;->b:Lf/a/a/e/b/b/q;

    iget-object p1, p1, Lf/a/a/e/b/b/q;->b:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/b/p;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->UP:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lf/a/a/e/b/b/p;->b:Lf/a/a/e/b/b/q;

    iget-object p1, p1, Lf/a/a/e/b/b/q;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lf/a/a/e/b/b/p;->b:Lf/a/a/e/b/b/q;

    iget-object p1, p1, Lf/a/a/e/b/b/q;->c:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
