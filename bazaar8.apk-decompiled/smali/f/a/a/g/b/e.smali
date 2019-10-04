.class public Lf/a/a/g/b/e;
.super Ljava/lang/Object;
.source "MediaPlayerPlayback.java"

# interfaces
.implements Lf/a/a/g/b/p;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/net/wifi/WifiManager$WifiLock;

.field public final c:Landroid/media/AudioManager;

.field public final d:Landroid/content/IntentFilter;

.field public e:I

.field public f:Z

.field public g:Lf/a/a/g/b/p$a;

.field public volatile h:Z

.field public volatile i:I

.field public volatile j:Ljava/lang/String;

.field public k:I

.field public l:Landroid/media/MediaPlayer;

.field public final m:Landroid/content/BroadcastReceiver;

.field public n:Landroid/telephony/PhoneStateListener;

.field public o:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lf/a/a/g/b/e;->d:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lf/a/a/g/b/e;->k:I

    .line 4
    new-instance v1, Lf/a/a/g/b/c;

    invoke-direct {v1, p0}, Lf/a/a/g/b/c;-><init>(Lf/a/a/g/b/e;)V

    iput-object v1, p0, Lf/a/a/g/b/e;->m:Landroid/content/BroadcastReceiver;

    .line 5
    iput-object p1, p0, Lf/a/a/g/b/e;->a:Landroid/content/Context;

    const-string v1, "audio"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lf/a/a/g/b/e;->c:Landroid/media/AudioManager;

    const-string v1, "wifi"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "uAmp_lock"

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/g/b/e;->b:Landroid/net/wifi/WifiManager$WifiLock;

    .line 9
    iput v0, p0, Lf/a/a/g/b/e;->e:I

    return-void
.end method

.method public static synthetic a(Lf/a/a/g/b/e;)Lf/a/a/g/b/p$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lf/a/a/g/b/e;->i:I

    :goto_0
    return v0
.end method

.method public a(Lf/a/a/g/b/p$a;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    return-void
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/a/a/g/b/e;->f:Z

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/b/e;->g()V

    .line 5
    invoke-virtual {p0}, Lf/a/a/g/b/e;->f()V

    .line 6
    invoke-virtual {p0}, Lf/a/a/g/b/e;->b()V

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lf/a/a/g/b/e;->j:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 9
    iput v2, p0, Lf/a/a/g/b/e;->i:I

    .line 10
    iput-object p1, p0, Lf/a/a/g/b/e;->j:Ljava/lang/String;

    .line 11
    :cond_0
    iget p1, p0, Lf/a/a/g/b/e;->e:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    if-nez v1, :cond_1

    iget-object p1, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lf/a/a/g/b/e;->c()V

    goto :goto_0

    .line 13
    :cond_1
    iput v0, p0, Lf/a/a/g/b/e;->e:I

    .line 14
    invoke-virtual {p0, v2}, Lf/a/a/g/b/e;->a(Z)V

    if-nez p2, :cond_3

    const/4 p1, 0x7

    .line 15
    iput p1, p0, Lf/a/a/g/b/e;->e:I

    .line 16
    iget-object p1, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    if-eqz p1, :cond_2

    .line 17
    iget p2, p0, Lf/a/a/g/b/e;->e:I

    invoke-interface {p1, p2}, Lf/a/a/g/b/p$a;->a(I)V

    :cond_2
    return-void

    .line 18
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lf/a/a/g/b/e;->d()V

    const/4 p1, 0x6

    .line 19
    iput p1, p0, Lf/a/a/g/b/e;->e:I

    .line 20
    iget-object p1, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 21
    iget-object p1, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 23
    iget-object p1, p0, Lf/a/a/g/b/e;->b:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 24
    iget-object p1, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    if-eqz p1, :cond_4

    .line 25
    iget-object p1, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    iget p2, p0, Lf/a/a/g/b/e;->e:I

    invoke-interface {p1, p2}, Lf/a/a/g/b/p$a;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "Exception playing song"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaPlayerPlayback"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p2, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    if-eqz p2, :cond_4

    .line 29
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lf/a/a/g/b/p$a;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "relaxResources. releaseMediaPlayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerPlayback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 34
    iget-object p1, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    .line 36
    :cond_0
    iget-object p1, p0, Lf/a/a/g/b/e;->b:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p0, Lf/a/a/g/b/e;->b:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/e;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lf/a/a/g/b/e;->o:Landroid/telephony/TelephonyManager;

    .line 2
    new-instance v0, Lf/a/a/g/b/d;

    invoke-direct {v0, p0}, Lf/a/a/g/b/d;-><init>(Lf/a/a/g/b/e;)V

    iput-object v0, p0, Lf/a/a/g/b/e;->n:Landroid/telephony/PhoneStateListener;

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/e;->o:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lf/a/a/g/b/e;->n:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configMediaPlayerState. audioFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/a/a/g/b/e;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerPlayback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lf/a/a/g/b/e;->k:I

    const/4 v2, 0x3

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lf/a/a/g/b/e;->e:I

    if-ne v0, v2, :cond_5

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/b/e;->pause()V

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {p0}, Lf/a/a/g/b/e;->f()V

    .line 6
    iget v0, p0, Lf/a/a/g/b/e;->k:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 7
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 10
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lf/a/a/g/b/e;->f:Z

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configMediaPlayerState startMediaPlayer. seeking to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf/a/a/g/b/e;->i:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget v0, p0, Lf/a/a/g/b/e;->i:I

    iget-object v1, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 14
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 15
    iput v2, p0, Lf/a/a/g/b/e;->e:I

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    iget v1, p0, Lf/a/a/g/b/e;->i:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x6

    .line 17
    iput v0, p0, Lf/a/a/g/b/e;->e:I

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lf/a/a/g/b/e;->f:Z

    .line 19
    :cond_5
    :goto_2
    iget-object v0, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    if-eqz v0, :cond_6

    .line 20
    iget v1, p0, Lf/a/a/g/b/e;->e:I

    invoke-interface {v0, v1}, Lf/a/a/g/b/p$a;->a(I)V

    :cond_6
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMediaPlayerIfNeeded. needed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerPlayback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    .line 4
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lf/a/a/g/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 5
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 6
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 7
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 8
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :goto_1
    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "MediaPlayerPlayback"

    const-string v1, "giveUpAudioFocus"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/e;->c:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lf/a/a/g/b/e;->k:I

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf/a/a/g/b/e;->h:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lf/a/a/g/b/e;->m:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lf/a/a/g/b/e;->d:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/a/a/g/b/e;->h:Z

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    const-string v0, "MediaPlayerPlayback"

    const-string v1, "tryToGetAudioFocus"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/e;->c:Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lf/a/a/g/b/e;->k:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lf/a/a/g/b/e;->k:I

    :goto_0
    return-void
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lf/a/a/g/b/e;->e:I

    return v0
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/a/a/g/b/e;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lf/a/a/g/b/e;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lf/a/a/g/b/e;->h:Z

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/e;->n:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lf/a/a/g/b/e;->o:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/a/a/g/b/e;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChange. focusChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerPlayback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lf/a/a/g/b/e;->k:I

    goto :goto_2

    :cond_0
    const/4 v2, -0x1

    const/4 v3, -0x3

    if-eq p1, v2, :cond_2

    const/4 v2, -0x2

    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange: Ignoring unsupported focusChange: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_0
    if-ne p1, v3, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 4
    :goto_1
    iput p1, p0, Lf/a/a/g/b/e;->k:I

    .line 5
    iget v1, p0, Lf/a/a/g/b/e;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    if-nez p1, :cond_4

    .line 6
    iput-boolean v0, p0, Lf/a/a/g/b/e;->f:Z

    .line 7
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lf/a/a/g/b/e;->c()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "MediaPlayerPlayback"

    const-string v0, "onCompletion from MediaPlayer"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lf/a/a/g/b/p$a;->a()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Media player error: what="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extra="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayerPlayback"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lf/a/a/g/b/p$a;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "MediaPlayerPlayback"

    const-string v0, "onPrepared from MediaPlayer"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lf/a/a/g/b/e;->c()V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeekComplete from MediaPlayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerPlayback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lf/a/a/g/b/e;->i:I

    .line 3
    iget p1, p0, Lf/a/a/g/b/e;->e:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/b/e;->f()V

    .line 5
    iget-object p1, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lf/a/a/g/b/e;->e:I

    .line 7
    :cond_0
    iget-object p1, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    if-eqz p1, :cond_1

    .line 8
    iget v0, p0, Lf/a/a/g/b/e;->e:I

    invoke-interface {p1, v0}, Lf/a/a/g/b/p$a;->a(I)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .line 1
    iget v0, p0, Lf/a/a/g/b/e;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lf/a/a/g/b/e;->i:I

    .line 5
    :cond_0
    invoke-virtual {p0, v1}, Lf/a/a/g/b/e;->a(Z)V

    :cond_1
    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lf/a/a/g/b/e;->e:I

    .line 7
    iget-object v0, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    if-eqz v0, :cond_2

    .line 8
    iget v2, p0, Lf/a/a/g/b/e;->e:I

    invoke-interface {v0, v2}, Lf/a/a/g/b/p$a;->a(I)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Lf/a/a/g/b/e;->h()V

    .line 10
    invoke-virtual {p0}, Lf/a/a/g/b/e;->i()V

    .line 11
    iget-object v0, p0, Lf/a/a/g/b/e;->n:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_3

    .line 12
    iget-object v2, p0, Lf/a/a/g/b/e;->o:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerPlayback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 3
    iput p1, p0, Lf/a/a/g/b/e;->i:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 5
    iput v0, p0, Lf/a/a/g/b/e;->e:I

    .line 6
    :cond_1
    invoke-virtual {p0}, Lf/a/a/g/b/e;->f()V

    .line 7
    iget-object v0, p0, Lf/a/a/g/b/e;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 8
    iget-object p1, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    if-eqz p1, :cond_2

    .line 9
    iget v0, p0, Lf/a/a/g/b/e;->e:I

    invoke-interface {p1, v0}, Lf/a/a/g/b/p$a;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lf/a/a/g/b/e;->e:I

    .line 2
    iget-object v1, p0, Lf/a/a/g/b/e;->g:Lf/a/a/g/b/p$a;

    if-eqz v1, :cond_0

    .line 3
    iget v2, p0, Lf/a/a/g/b/e;->e:I

    invoke-interface {v1, v2}, Lf/a/a/g/b/p$a;->a(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf/a/a/g/b/e;->a()I

    move-result v1

    iput v1, p0, Lf/a/a/g/b/e;->i:I

    .line 5
    invoke-virtual {p0}, Lf/a/a/g/b/e;->e()V

    .line 6
    invoke-virtual {p0}, Lf/a/a/g/b/e;->h()V

    .line 7
    invoke-virtual {p0}, Lf/a/a/g/b/e;->h()V

    .line 8
    invoke-virtual {p0, v0}, Lf/a/a/g/b/e;->a(Z)V

    return-void
.end method
