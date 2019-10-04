.class public Lf/a/a/e/b/b/t;
.super Ljava/lang/Object;
.source "EditTextInflater.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/g;

.field public final synthetic b:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

.field public final synthetic c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

.field public final synthetic d:Lf/a/a/e/b/b/B$a;

.field public final synthetic e:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;Lf/a/a/e/b/b/B$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/t;->e:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;

    iput-object p2, p0, Lf/a/a/e/b/b/t;->a:Lf/a/a/e/g;

    iput-object p3, p0, Lf/a/a/e/b/b/t;->b:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

    iput-object p4, p0, Lf/a/a/e/b/b/t;->c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    iput-object p5, p0, Lf/a/a/e/b/b/t;->d:Lf/a/a/e/b/b/B$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/t;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 2
    new-array v1, v1, [I

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    invoke-static {}, Lf/a/a/a/a/b;->a()Lf/a/a/a/a/b;

    move-result-object v2

    new-instance v3, Lf/a/a/a/a/a;

    invoke-direct {v3}, Lf/a/a/a/a/a;-><init>()V

    const-string v4, "user"

    .line 5
    invoke-virtual {v3, v4}, Lf/a/a/a/a/a;->a(Ljava/lang/String;)Lf/a/a/a/a/a;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lf/a/a/a/a/a;->a(J)Lf/a/a/a/a/a;

    const-string v4, "edittext"

    .line 7
    invoke-virtual {v3, v4}, Lf/a/a/a/a/a;->b(Ljava/lang/String;)Lf/a/a/a/a/a;

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "change_focus"

    invoke-virtual {v3, v5, v4}, Lf/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    .line 9
    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lf/a/a/a/a/a;->c(Ljava/lang/String;)Lf/a/a/a/a/a;

    iget-object v0, p0, Lf/a/a/e/b/b/t;->a:Lf/a/a/e/g;

    .line 10
    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/d/d;->c()Ljava/lang/String;

    move-result-object v0

    const-string v4, "path"

    invoke-virtual {v3, v4, v0}, Lf/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "y-absolute"

    invoke-virtual {v3, v0, p1}, Lf/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    const/4 p1, 0x1

    aget v0, v1, p1

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "y-relative"

    invoke-virtual {v3, v1, v0}, Lf/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    .line 13
    invoke-virtual {v2, v3}, Lf/a/a/a/a/b;->a(Lf/a/a/a/a/a;)V

    .line 14
    iget-object v0, p0, Lf/a/a/e/b/b/t;->b:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lf/a/a/e/b/b/t;->c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    if-eqz p2, :cond_1

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->UP:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    goto :goto_0

    :cond_1
    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->DOWN:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    :goto_0
    invoke-interface {v0, v1, p1}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;Z)V

    :cond_2
    if-nez p2, :cond_3

    .line 16
    iget-object p1, p0, Lf/a/a/e/b/b/t;->d:Lf/a/a/e/b/b/B$a;

    invoke-interface {p1}, Lf/a/a/e/b/b/B$a;->a()Ljava/lang/String;

    goto :goto_1

    .line 17
    :cond_3
    iget-object p1, p0, Lf/a/a/e/b/b/t;->c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    invoke-interface {p1}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;->a()V

    :goto_1
    return-void
.end method
