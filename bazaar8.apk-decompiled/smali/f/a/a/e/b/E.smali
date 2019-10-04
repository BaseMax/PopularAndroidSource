.class public Lf/a/a/e/b/E;
.super Ljava/lang/Object;
.source "SearchHeaderInflater.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lf/a/a/e/b/E;->c:Lf/a/a/e/b/G;

    iput-object p2, p0, Lf/a/a/e/b/E;->a:Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object p3, p0, Lf/a/a/e/b/E;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/E;->a:Landroidx/appcompat/widget/AppCompatImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/E;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
