.class final Landroid/support/v4/media/session/MediaSessionCompat$g$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$g;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$g;Landroid/os/Looper;)V
    .locals 0

    .line 3026
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    .line 3027
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 3032
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$g;->i:Landroid/support/v4/media/session/MediaSessionCompat$a;

    if-nez v0, :cond_0

    return-void

    .line 3037
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 3038
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 3039
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    new-instance v3, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    const-string v4, "data_calling_pkg"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data_calling_pid"

    .line 3040
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "data_calling_uid"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 3039
    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$g;->setCurrentControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    const-string v2, "data_extras"

    .line 3042
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3043
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    .line 3046
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 3113
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 3149
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onSetShuffleMode(I)V

    goto/16 :goto_2

    .line 3143
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onSetCaptioningEnabled(Z)V

    goto/16 :goto_2

    .line 3128
    :pswitch_4
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$g;->n:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 3129
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ltz v1, :cond_1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$g;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$g;->n:Ljava/util/List;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3130
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_6

    .line 3132
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_2

    .line 3125
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_2

    .line 3122
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/media/MediaDescriptionCompat;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    goto/16 :goto_2

    .line 3119
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_2

    .line 3146
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onSetRepeatMode(I)V

    goto/16 :goto_2

    .line 3140
    :pswitch_9
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat$g;->b(II)V

    goto/16 :goto_2

    .line 3052
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    .line 3053
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    .line 3054
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3057
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    .line 4158
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 4161
    :cond_2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$g;->l:Landroid/support/v4/media/session/PlaybackStateCompat;

    const-wide/16 v3, 0x0

    if-nez v1, :cond_3

    move-wide v5, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$g;->l:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v5

    .line 4162
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x7e

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7f

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_b
    const-wide/16 v7, 0x40

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_6

    .line 4192
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onFastForward()V

    goto/16 :goto_2

    :pswitch_c
    const-wide/16 v7, 0x8

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_6

    .line 4197
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onRewind()V

    goto/16 :goto_2

    :pswitch_d
    const-wide/16 v7, 0x10

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_6

    .line 4182
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onSkipToPrevious()V

    goto/16 :goto_2

    :pswitch_e
    const-wide/16 v7, 0x20

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_6

    .line 4177
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onSkipToNext()V

    goto/16 :goto_2

    :pswitch_f
    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_6

    .line 4187
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onStop()V

    goto/16 :goto_2

    :cond_4
    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_6

    .line 4172
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPause()V

    goto/16 :goto_2

    :cond_5
    const-wide/16 v7, 0x4

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_6

    .line 4166
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPlay()V

    goto/16 :goto_2

    .line 3116
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 3110
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    goto/16 :goto_2

    .line 3107
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onSeekTo(J)V

    goto/16 :goto_2

    .line 3104
    :pswitch_13
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onRewind()V

    goto/16 :goto_2

    .line 3101
    :pswitch_14
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onFastForward()V

    goto/16 :goto_2

    .line 3098
    :pswitch_15
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onSkipToPrevious()V

    goto/16 :goto_2

    .line 3095
    :pswitch_16
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onSkipToNext()V

    goto :goto_2

    .line 3092
    :pswitch_17
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onStop()V

    goto :goto_2

    .line 3089
    :pswitch_18
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPause()V

    goto :goto_2

    .line 3086
    :pswitch_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onSkipToQueueItem(J)V

    goto :goto_2

    .line 3083
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3080
    :pswitch_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3077
    :pswitch_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3074
    :pswitch_1d
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPlay()V

    goto :goto_2

    .line 3071
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3068
    :pswitch_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3065
    :pswitch_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3062
    :pswitch_21
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPrepare()V

    goto :goto_2

    .line 3137
    :pswitch_22
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a(II)V

    goto :goto_2

    .line 3048
    :pswitch_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$g$a;

    .line 3049
    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->command:Ljava/lang/String;

    iget-object v3, p1, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->extras:Landroid/os/Bundle;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3153
    :cond_6
    :goto_2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    invoke-virtual {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$g;->setCurrentControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$g;->setCurrentControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
