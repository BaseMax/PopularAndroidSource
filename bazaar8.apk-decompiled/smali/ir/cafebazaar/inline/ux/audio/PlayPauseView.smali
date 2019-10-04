.class public Lir/cafebazaar/inline/ux/audio/PlayPauseView;
.super Landroid/widget/FrameLayout;
.source "PlayPauseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ux/audio/PlayPauseView$a;,
        Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ProgressBar;

.field public c:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 10
    sget v0, Lf/a/a/f;->play_pause_view:I

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    sget p1, Lf/a/a/e;->playPauseIcon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->a:Landroid/widget/ImageView;

    .line 12
    sget p1, Lf/a/a/e;->progressBar:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->b:Landroid/widget/ProgressBar;

    return-void
.end method

.method public final a(Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;)V
    .locals 3

    .line 1
    sget-object v0, Lf/a/a/g/b/o;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->a:Landroid/widget/ImageView;

    sget v2, Lf/a/a/d;->ic_play_circle_filled_black:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->b:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->a:Landroid/widget/ImageView;

    sget v2, Lf/a/a/d;->ic_pause_circle_filled_black:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object p1, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public getState()Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->c:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    return-object v0
.end method

.method public setOnClickListener(Lir/cafebazaar/inline/ux/audio/PlayPauseView$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->a:Landroid/widget/ImageView;

    new-instance v1, Lf/a/a/g/b/n;

    invoke-direct {v1, p0, p1}, Lf/a/a/g/b/n;-><init>(Lir/cafebazaar/inline/ux/audio/PlayPauseView;Lir/cafebazaar/inline/ux/audio/PlayPauseView$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setState(Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->c:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    .line 2
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->a(Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;)V

    return-void
.end method
