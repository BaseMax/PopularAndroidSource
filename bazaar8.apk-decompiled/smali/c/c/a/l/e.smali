.class public final Lc/c/a/l/e;
.super Ljava/lang/Object;
.source "CafePlayerUIController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/l/e$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/l/e$a;


# instance fields
.field public final b:Lc/c/a/l/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/l/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/l/e$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/l/e;->a:Lc/c/a/l/e$a;

    return-void
.end method

.method public constructor <init>(Lc/c/a/l/f;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/l/e;->b:Lc/c/a/l/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 12

    const-string v0, "playerView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/l/e;->b:Lc/c/a/l/f;

    .line 2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    sget v2, Lc/c/a/l/k;->exo_watermark:I

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0}, Lc/c/a/l/f;->h()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v3, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    const-string v2, "watermarkView"

    .line 6
    invoke-static {v4, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "it.toString()"

    invoke-static {v5, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3c

    const/4 v11, 0x0

    .line 8
    invoke-static/range {v3 .. v11}, Lc/c/a/d/g/a/i;->a(Lc/c/a/d/g/a/i;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x2710

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setFastForwardIncrementMs(I)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setRewindIncrementMs(I)V

    .line 11
    sget v0, Lc/c/a/l/k;->exo_subtitles:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 12
    :try_start_0
    sget v0, Lc/c/a/l/j;->medium:I

    invoke-static {v1, v0}, Lb/i/b/a/h;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    new-instance v0, Landroid/widget/TextView;

    const-string v2, "subtitleView"

    invoke-static {p1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    move-object v8, v0

    .line 14
    new-instance v0, Lc/e/a/a/k/a;

    const/4 v3, -0x1

    .line 15
    sget v2, Lc/c/a/l/h;->player_subtitle_background:I

    invoke-static {v1, v2}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v2, v0

    .line 16
    invoke-direct/range {v2 .. v8}, Lc/e/a/a/k/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lc/e/a/a/k/a;)V

    return-void
.end method
