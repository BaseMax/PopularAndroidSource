.class public final Lcom/farsitel/bazaar/player/view/PlayPauseControl;
.super Landroid/widget/FrameLayout;
.source "PlayPauseControl.kt"


# instance fields
.field public a:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v0, v2}, Lc/c/a/c/h/d;->a(Landroid/content/Context;F)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v2, v1}, Lc/c/a/c/h/d;->a(Landroid/content/Context;F)I

    move-result v1

    .line 3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 5
    sget v3, Lc/c/a/l/i;->shape_circle_light:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 6
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 7
    invoke-virtual {v0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "button"

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->a:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_0

    sget v5, Lc/c/a/l/i;->ic_player_play:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/16 v1, 0x8

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 11
    iget-object v0, p0, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->a:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3
.end method

.method public final b()V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->a()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->a:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p1, "button"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setState(Lcom/farsitel/bazaar/player/view/PlaybackState;)V
    .locals 4

    const-string v0, "playbackState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/l/c/b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "button"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    const/16 v1, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->a:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->a:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->a:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_6

    sget v0, Lc/c/a/l/i;->ic_player_play:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->a:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_6
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_7
    iget-object p1, p0, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->a:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_9

    sget v0, Lc/c/a/l/i;->ic_player_pause:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 8
    iget-object p1, p0, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->a:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_8
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_9
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method
