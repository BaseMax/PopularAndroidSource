.class public Lf/a/a/e/b/F;
.super Ljava/lang/Object;
.source "SearchHeaderInflater.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/G;->a(Landroid/view/ViewStub;Lf/a/a/e/g;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final synthetic c:Lf/a/a/e/b/G;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/G;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/F;->c:Lf/a/a/e/b/G;

    iput-object p2, p0, Lf/a/a/e/b/F;->a:Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object p3, p0, Lf/a/a/e/b/F;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/F;->a:Landroidx/appcompat/widget/AppCompatImageButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/F;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method
