.class public Lf/a/a/e/b/g;
.super Landroid/support/v4/media/session/MediaControllerCompat$a;
.source "AudioInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/i;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public d:Ljava/lang/Thread;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic g:Ljava/lang/Runnable;

.field public final synthetic h:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

.field public final synthetic i:Landroid/widget/SeekBar;

.field public final synthetic j:Lf/a/a/e/g;

.field public final synthetic k:Lf/a/a/e/b/i;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/i;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;Lir/cafebazaar/inline/ux/audio/PlayPauseView;Landroid/widget/SeekBar;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/g;->k:Lf/a/a/e/b/i;

    iput-object p2, p0, Lf/a/a/e/b/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lf/a/a/e/b/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lf/a/a/e/b/g;->g:Ljava/lang/Runnable;

    iput-object p5, p0, Lf/a/a/e/b/g;->h:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

    iput-object p6, p0, Lf/a/a/e/b/g;->i:Landroid/widget/SeekBar;

    iput-object p7, p0, Lf/a/a/e/b/g;->j:Lf/a/a/e/g;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lf/a/a/e/b/g;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :cond_1
    iget-object v0, p0, Lf/a/a/e/b/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->f()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lf/a/a/e/b/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->f()I

    move-result v1

    const/4 v5, 0x6

    if-eq v1, v3, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->f()I

    move-result v1

    if-ne v1, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 6
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->f()I

    move-result v0

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v5, :cond_6

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InlineAudioInflater"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 9
    :cond_5
    iget-object p1, p0, Lf/a/a/e/b/g;->h:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

    sget-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->ERROR:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {p1, v0}, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->setState(Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;)V

    .line 10
    iget-object p1, p0, Lf/a/a/e/b/g;->j:Lf/a/a/e/g;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    iget-object v0, p0, Lf/a/a/e/b/g;->j:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    sget v1, Lf/a/a/g;->error_loading_music:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 14
    :cond_6
    iget-object p1, p0, Lf/a/a/e/b/g;->h:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

    sget-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->BUFFERING:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {p1, v0}, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->setState(Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;)V

    goto :goto_3

    .line 15
    :cond_7
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lf/a/a/e/b/g;->g:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lf/a/a/e/b/g;->d:Ljava/lang/Thread;

    .line 16
    iget-object p1, p0, Lf/a/a/e/b/g;->d:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 17
    iget-object p1, p0, Lf/a/a/e/b/g;->h:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

    sget-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->PLAYING:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {p1, v0}, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->setState(Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;)V

    goto :goto_3

    .line 18
    :cond_8
    iget-object p1, p0, Lf/a/a/e/b/g;->h:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

    sget-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->PAUSED:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {p1, v0}, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->setState(Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;)V

    goto :goto_3

    .line 19
    :cond_9
    iget-object p1, p0, Lf/a/a/e/b/g;->h:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

    sget-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->STOPPED:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {p1, v0}, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->setState(Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;)V

    .line 20
    iget-object p1, p0, Lf/a/a/e/b/g;->i:Landroid/widget/SeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_a
    :goto_3
    return-void
.end method
