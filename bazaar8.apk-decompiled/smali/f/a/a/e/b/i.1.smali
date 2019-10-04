.class public Lf/a/a/e/b/i;
.super Lf/a/a/e/b/n;
.source "AudioInflater.java"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/b/i;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/i;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic a(Lf/a/a/e/b/i;Lf/a/a/e/g;Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lf/a/a/e/b/i;->a(Lf/a/a/e/g;Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 11
    sget v0, Lf/a/a/e;->playPauseBtn:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lir/cafebazaar/inline/ux/audio/PlayPauseView;

    .line 12
    sget v0, Lf/a/a/e;->seekBar:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/SeekBar;

    .line 13
    sget v0, Lf/a/a/e;->currentTime:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    .line 14
    sget v0, Lf/a/a/e;->totalTime:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 15
    sget v0, Lf/a/a/e;->progressBar:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 16
    sget v1, Lf/a/a/e;->audioContentLayout:I

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 17
    invoke-virtual {v8, v9, v12}, Lf/a/a/e/b/i;->a(Lf/a/a/e/g;Landroid/widget/SeekBar;)V

    .line 18
    invoke-virtual {v8, v9, v0}, Lf/a/a/e/b/i;->a(Lf/a/a/e/g;Landroid/widget/ProgressBar;)V

    .line 19
    invoke-virtual {v8, v9, v1}, Lf/a/a/e/b/i;->a(Lf/a/a/e/g;Landroid/widget/LinearLayout;)V

    const-string v0, "??:??"

    .line 20
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    new-instance v14, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    iget-object v0, v8, Lf/a/a/e/b/i;->d:Ljava/lang/Integer;

    iget-object v1, v8, Lf/a/a/e/b/i;->c:Ljava/lang/String;

    invoke-direct {v14, v0, v1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v8, v9, v14}, Lf/a/a/e/b/i;->a(Lf/a/a/e/g;Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)V

    .line 24
    sget-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->BUFFERING:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {v11, v0}, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->setState(Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;)V

    .line 25
    new-instance v0, Lf/a/a/e/b/a;

    invoke-direct {v0, v8, v11, v9}, Lf/a/a/e/b/a;-><init>(Lf/a/a/e/b/i;Lir/cafebazaar/inline/ux/audio/PlayPauseView;Lf/a/a/e/g;)V

    invoke-virtual {v11, v0}, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->setOnClickListener(Lir/cafebazaar/inline/ux/audio/PlayPauseView$a;)V

    .line 26
    invoke-static {}, Lf/a/a/g/b/u;->a()Lf/a/a/g/b/u;

    move-result-object v15

    new-instance v7, Lf/a/a/g/b/b;

    new-instance v5, Lf/a/a/e/b/c;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v14

    move-object v9, v5

    move-object v5, v13

    move-object v10, v7

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lf/a/a/e/b/c;-><init>(Lf/a/a/e/b/i;Lf/a/a/e/g;Landroid/widget/SeekBar;Lir/cafebazaar/inline/ux/audio/MusicDescriptor;Landroid/widget/TextView;Landroid/widget/TextView;Lir/cafebazaar/inline/ux/audio/PlayPauseView;)V

    invoke-direct {v10, v14, v9}, Lf/a/a/g/b/b;-><init>(Lir/cafebazaar/inline/ux/audio/MusicDescriptor;Lf/a/a/g/b/b$a;)V

    invoke-virtual {v15, v10}, Lf/a/a/g/b/u;->execute(Ljava/lang/Runnable;)V

    .line 27
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 28
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 30
    new-instance v14, Lf/a/a/e/b/d;

    move-object v0, v14

    move-object v2, v10

    move-object v3, v13

    move-object v4, v7

    move-object v5, v9

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lf/a/a/e/b/d;-><init>(Lf/a/a/e/b/i;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lf/a/a/e/g;)V

    invoke-virtual {v12, v14}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 31
    new-instance v6, Lf/a/a/e/b/f;

    move-object v0, v6

    move-object/from16 v2, p1

    move-object v3, v7

    move-object v4, v9

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lf/a/a/e/b/f;-><init>(Lf/a/a/e/b/i;Lf/a/a/e/g;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/SeekBar;)V

    .line 32
    invoke-interface/range {p1 .. p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    check-cast v0, Lf/a/a/e/c;

    invoke-virtual {v0}, Lf/a/a/e/c;->Na()Lf/a/a/g/b/a;

    move-result-object v13

    iget-object v14, v8, Lf/a/a/e/b/i;->d:Ljava/lang/Integer;

    new-instance v15, Lf/a/a/e/b/g;

    move-object v0, v15

    move-object v2, v9

    move-object v3, v10

    move-object v4, v6

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lf/a/a/e/b/g;-><init>(Lf/a/a/e/b/i;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;Lir/cafebazaar/inline/ux/audio/PlayPauseView;Landroid/widget/SeekBar;Lf/a/a/e/g;)V

    invoke-virtual {v13, v14, v15}, Lf/a/a/g/b/a;->a(Ljava/lang/Integer;Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    return-object p2
.end method

.method public final a(Lf/a/a/e/g;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 3
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->d()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public final a(Lf/a/a/e/g;Landroid/widget/ProgressBar;)V
    .locals 1

    .line 10
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final a(Lf/a/a/e/g;Landroid/widget/SeekBar;)V
    .locals 3

    .line 7
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 8
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 9
    invoke-virtual {p2}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method

.method public final a(Lf/a/a/e/g;Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)V
    .locals 2

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ir.cafebazaar.inline.audioplayer.RegisterAudio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_REGISTER_AUDIO"

    .line 5
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-static {p1}, Lb/t/a/b;->a(Landroid/content/Context;)Lb/t/a/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lb/t/a/b;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_audio:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/i;->c:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/e/b/i;->d:Ljava/lang/Integer;

    return-void
.end method
