.class public Lf/a/a/e/a/k;
.super Lf/a/a/e/a/d;
.source "ImageChanger.java"


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/a/a/e/a/k;->c:Ljava/lang/String;

    .line 3
    new-instance v0, Lf/a/a/e/a/a/c;

    invoke-direct {v0}, Lf/a/a/e/a/a/c;-><init>()V

    invoke-virtual {p0, v0}, Lf/a/a/e/a/p;->a(Lf/a/a/e/a/a/a;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Lf/a/a/e/g;)V
    .locals 6

    .line 2
    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    .line 3
    iget-object p1, p0, Lf/a/a/e/a/k;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4
    sget p1, Lf/a/a/e;->image_style_tag:I

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    .line 5
    invoke-static {}, Lf/a/a/f/e;->a()Lf/a/a/f/e;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/e/a/k;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->g()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;ZII)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/k;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
