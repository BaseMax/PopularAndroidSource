.class final Landroid/support/v4/media/session/MediaControllerCompat$a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/support/v4/media/session/MediaControllerCompat$a;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$a;Landroid/os/Looper;)V
    .locals 0

    .line 1067
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    .line 1068
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 1065
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->a:Z

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1073
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 1076
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1117
    :pswitch_1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onSessionReady()V

    goto/16 :goto_0

    .line 1102
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onShuffleModeChanged(I)V

    return-void

    .line 1096
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onCaptioningEnabledChanged(Z)V

    return-void

    .line 1099
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onRepeatModeChanged(I)V

    return-void

    .line 1114
    :pswitch_5
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onSessionDestroyed()V

    return-void

    .line 1105
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 1106
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1107
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onExtrasChanged(Landroid/os/Bundle;)V

    return-void

    .line 1093
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    return-void

    .line 1090
    :pswitch_8
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onQueueChanged(Ljava/util/List;)V

    return-void

    .line 1111
    :pswitch_9
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/session/MediaControllerCompat$g;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$g;)V

    return-void

    .line 1087
    :pswitch_a
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    .line 1084
    :pswitch_b
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void

    .line 1078
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1079
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1080
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
