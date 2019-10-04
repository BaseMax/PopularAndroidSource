.class public Lf/a/a/e/b/b/y;
.super Lf/a/a/e/b/b/B;
.source "ImagePickerInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/e/b/b/y$a;
    }
.end annotation


# instance fields
.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/b/B;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/a/a/e/b/b/y;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1
    sget v0, Lf/a/a/e;->image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    sget v1, Lf/a/a/e;->progress:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    new-instance v2, Lf/a/a/e/c/a;

    invoke-direct {v2}, Lf/a/a/e/c/a;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7fffffff

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 6
    new-instance v1, Lf/a/a/e/b/b/w;

    invoke-direct {v1, p0, p1}, Lf/a/a/e/b/b/w;-><init>(Lf/a/a/e/b/b/y;Lf/a/a/e/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object p1

    check-cast p1, Lf/a/a/e/c;

    invoke-virtual {p1}, Lf/a/a/e/c;->Oa()Lf/a/a/g/d;

    move-result-object p1

    invoke-virtual {p0}, Lf/a/a/e/b/b/B;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lf/a/a/e/b/b/B;->e()Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    move-result-object v1

    new-instance v2, Lf/a/a/e/b/b/x;

    invoke-direct {v2, p0}, Lf/a/a/e/b/b/x;-><init>(Lf/a/a/e/b/b/y;)V

    invoke-virtual {p1, v0, v1, v2}, Lf/a/a/g/d;->a(Ljava/lang/String;Lir/cafebazaar/inline/ux/prefill/PrefillDomain;Lf/a/a/e/b/b/B$a;)V

    return-object p2
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 8
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lf/a/a/e/b/b/y;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_image_picker:I

    return v0
.end method
