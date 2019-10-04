.class public Lir/cafebazaar/inline/ui/inflaters/ImageInflater;
.super Lf/a/a/e/b/n;
.source "ImageInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

.field public e:Ljava/lang/Float;

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    .line 2
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->normal:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->e:Ljava/lang/Float;

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->f:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->g:Z

    return-void
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 8

    .line 6
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 7
    check-cast p2, Lir/cafebazaar/inline/ui/inflaters/views/InlineAspectRatioImageView;

    .line 8
    sget v0, Lf/a/a/e;->image_style_tag:I

    iget-object v1, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    invoke-virtual {p2, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->e:Ljava/lang/Float;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;->setAspectRatio(F)V

    .line 11
    :cond_0
    invoke-static {}, Lf/a/a/f/e;->a()Lf/a/a/f/e;

    move-result-object v2

    iget-object v3, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->c:Ljava/lang/String;

    sget v5, Lf/a/a/d;->placeholder:I

    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->g()I

    move-result v6

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;IILf/a/a/f/e$a;)V

    .line 12
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->f:I

    invoke-virtual {p2, v0}, Lir/cafebazaar/inline/ui/inflaters/views/InlineAspectRatioImageView;->setWidthPercent(I)V

    .line 13
    iget-boolean v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->g:Z

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Lf/a/a/e/b/t;

    invoke-direct {v0, p0, p1}, Lf/a/a/e/b/t;-><init>(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;Lf/a/a/e/g;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p2
.end method

.method public a(F)V
    .locals 0

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->e:Ljava/lang/Float;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->f:I

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->g:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->f()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->c:Ljava/lang/String;

    return-void
.end method
