.class public Lf/a/a/e/b/W;
.super Lf/a/a/e/b/n;
.source "VideoInflater.java"


# instance fields
.field public final c:D

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lf/a/a/e/b/W;->c:D

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 2
    sget p1, Lf/a/a/e;->play_button:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 3
    sget v0, Lf/a/a/e;->video_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ui/inflaters/views/InlineAspectRatioImageView;

    .line 4
    sget v1, Lf/a/a/e;->video_thumbnail_overlay:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;->setAspectRatio(F)V

    .line 6
    new-instance v2, Lf/a/a/e/b/V;

    invoke-direct {v2, p0}, Lf/a/a/e/b/V;-><init>(Lf/a/a/e/b/W;)V

    .line 7
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/a/a/e/b/W;->e:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_video:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/W;->d:Ljava/lang/String;

    return-void
.end method
