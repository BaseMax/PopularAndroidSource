.class public Lf/a/a/e/b/b/f;
.super Ljava/lang/Object;
.source "CheckBoxInflater.java"

# interfaces
.implements Lf/a/a/e/b/b/B$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/g;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatCheckBox;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lf/a/a/e/g;

.field public final synthetic e:Lf/a/a/e/b/b/g;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/g;Landroidx/appcompat/widget/AppCompatCheckBox;Landroid/widget/TextView;Landroid/view/View;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/f;->e:Lf/a/a/e/b/b/g;

    iput-object p2, p0, Lf/a/a/e/b/b/f;->a:Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p3, p0, Lf/a/a/e/b/b/f;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lf/a/a/e/b/b/f;->c:Landroid/view/View;

    iput-object p5, p0, Lf/a/a/e/b/b/f;->d:Lf/a/a/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/f;->e:Lf/a/a/e/b/b/g;

    invoke-static {v0}, Lf/a/a/e/b/b/g;->a(Lf/a/a/e/b/b/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/a/e/b/b/f;->a:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/e/b/b/f;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lf/a/a/e/b/b/f;->c:Landroid/view/View;

    iget-object v1, p0, Lf/a/a/e/b/b/f;->d:Lf/a/a/e/g;

    invoke-interface {v1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v1

    sget v2, Lf/a/a/a;->wrong_field:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    iget-object v0, p0, Lf/a/a/e/b/b/f;->d:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    sget v1, Lf/a/a/g;->choosing_this_item_is_necessary:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lf/a/a/e/b/b/f;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/f;->a:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
