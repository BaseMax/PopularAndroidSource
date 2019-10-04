.class public Lb/b/a/u;
.super Lb/i/k/K;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/v;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/a/v;


# direct methods
.method public constructor <init>(Lb/b/a/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/a/u;->a:Lb/b/a/v;

    invoke-direct {p0}, Lb/i/k/K;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/b/a/u;->a:Lb/b/a/v;

    iget-object p1, p1, Lb/b/a/v;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lb/b/a/u;->a:Lb/b/a/v;

    iget-object p1, p1, Lb/b/a/v;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Lb/i/k/I;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/i/k/I;->a(Lb/i/k/J;)Lb/i/k/I;

    .line 3
    iget-object p1, p0, Lb/b/a/u;->a:Lb/b/a/v;

    iget-object p1, p1, Lb/b/a/v;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Lb/i/k/I;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/b/a/u;->a:Lb/b/a/v;

    iget-object p1, p1, Lb/b/a/v;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
