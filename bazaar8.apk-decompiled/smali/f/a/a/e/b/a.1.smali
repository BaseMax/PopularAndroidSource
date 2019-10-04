.class public Lf/a/a/e/b/a;
.super Ljava/lang/Object;
.source "AudioInflater.java"

# interfaces
.implements Lir/cafebazaar/inline/ux/audio/PlayPauseView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/i;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

.field public final synthetic b:Lf/a/a/e/g;

.field public final synthetic c:Lf/a/a/e/b/i;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/i;Lir/cafebazaar/inline/ux/audio/PlayPauseView;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/a;->c:Lf/a/a/e/b/i;

    iput-object p2, p0, Lf/a/a/e/b/a;->a:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

    iput-object p3, p0, Lf/a/a/e/b/a;->b:Lf/a/a/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/a;->a:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->getState()Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lf/a/a/e/b/h;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick with state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineAudioInflater"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ir.cafebazaar.inline.audioplayer.PlayNewAudio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lf/a/a/e/b/a;->c:Lf/a/a/e/b/i;

    invoke-static {v1}, Lf/a/a/e/b/i;->a(Lf/a/a/e/b/i;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_AUDIO_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lf/a/a/e/b/a;->b:Lf/a/a/e/g;

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ir.cafebazaar.inline.audioplayer.PausePlayingAudio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lf/a/a/e/b/a;->b:Lf/a/a/e/g;

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    nop

    :cond_2
    :goto_0
    return-void
.end method
