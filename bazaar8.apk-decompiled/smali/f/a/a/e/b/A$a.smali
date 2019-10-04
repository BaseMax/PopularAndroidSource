.class public Lf/a/a/e/b/A$a;
.super Lb/G/a/a;
.source "PhotoSliderInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/e/b/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public c:Lf/a/a/e/g;

.field public d:Landroid/view/LayoutInflater;

.field public final synthetic e:Lf/a/a/e/b/A;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/A;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/A$a;->e:Lf/a/a/e/b/A;

    invoke-direct {p0}, Lb/G/a/a;-><init>()V

    .line 2
    iput-object p2, p0, Lf/a/a/e/b/A$a;->c:Lf/a/a/e/g;

    .line 3
    invoke-interface {p2}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/e/b/A$a;->d:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/b/A$a;)Lf/a/a/e/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/A$a;->c:Lf/a/a/e/g;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget-object v0, p0, Lf/a/a/e/b/A$a;->e:Lf/a/a/e/b/A;

    invoke-static {v0}, Lf/a/a/e/b/A;->a(Lf/a/a/e/b/A;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 4
    iget-object v0, p0, Lf/a/a/e/b/A$a;->e:Lf/a/a/e/b/A;

    invoke-static {v0}, Lf/a/a/e/b/A;->a(Lf/a/a/e/b/A;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;

    .line 5
    iget-object v1, p0, Lf/a/a/e/b/A$a;->e:Lf/a/a/e/b/A;

    invoke-static {v1}, Lf/a/a/e/b/A;->b(Lf/a/a/e/b/A;)F

    move-result v1

    invoke-virtual {v0, v1}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->a(F)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->a(Z)V

    .line 7
    iget-object v1, p0, Lf/a/a/e/b/A$a;->d:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lf/a/a/e/b/A$a;->c:Lf/a/a/e/g;

    invoke-virtual {v0, v1, p1, v2}, Lf/a/a/e/b/n;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object v0

    .line 8
    new-instance v1, Lf/a/a/e/b/z;

    invoke-direct {v1, p0, p2}, Lf/a/a/e/b/z;-><init>(Lf/a/a/e/b/A$a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
