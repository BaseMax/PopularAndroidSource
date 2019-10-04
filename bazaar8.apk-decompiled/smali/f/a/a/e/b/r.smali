.class public Lf/a/a/e/b/r;
.super Ljava/lang/Object;
.source "HeaderInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/s;->a(Landroid/view/ViewStub;Lf/a/a/e/g;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/g;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final synthetic c:Lf/a/a/e/b/s;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/s;Lf/a/a/e/g;Landroidx/appcompat/widget/AppCompatImageButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/r;->c:Lf/a/a/e/b/s;

    iput-object p2, p0, Lf/a/a/e/b/r;->a:Lf/a/a/e/g;

    iput-object p3, p0, Lf/a/a/e/b/r;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/r;->a:Lf/a/a/e/g;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object p1

    new-instance v0, Lf/a/a/g/d/a/d;

    invoke-direct {v0}, Lf/a/a/g/d/a/d;-><init>()V

    iget-object v1, p0, Lf/a/a/e/b/r;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p1, v0, v1}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V

    return-void
.end method
