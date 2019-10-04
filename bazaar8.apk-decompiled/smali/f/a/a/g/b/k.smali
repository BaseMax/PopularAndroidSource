.class public Lf/a/a/g/b/k;
.super Landroid/support/v4/media/session/MediaControllerCompat$a;
.source "MusicNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/g/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lf/a/a/g/b/l;


# direct methods
.method public constructor <init>(Lf/a/a/g/b/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/b/k;->d:Lf/a/a/g/b/l;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 9
    invoke-super {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;->a()V

    const-string v0, "NotificationManager"

    const-string v1, "Session was destroyed, resetting to the new session token"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :try_start_0
    iget-object v1, p0, Lf/a/a/g/b/k;->d:Lf/a/a/g/b/l;

    invoke-static {v1}, Lf/a/a/g/b/l;->c(Lf/a/a/g/b/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "could not connect media controller"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lf/a/a/g/b/k;->d:Lf/a/a/g/b/l;

    invoke-static {v0, p1}, Lf/a/a/g/b/l;->a(Lf/a/a/g/b/l;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received new metadata "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lf/a/a/g/b/k;->d:Lf/a/a/g/b/l;

    invoke-static {p1}, Lf/a/a/g/b/l;->a(Lf/a/a/g/b/l;)Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lf/a/a/g/b/k;->d:Lf/a/a/g/b/l;

    invoke-static {v0}, Lf/a/a/g/b/l;->b(Lf/a/a/g/b/l;)Lb/i/a/q;

    move-result-object v0

    const/16 v1, 0x94

    invoke-virtual {v0, v1, p1}, Lb/i/a/q;->a(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/k;->d:Lf/a/a/g/b/l;

    invoke-static {v0, p1}, Lf/a/a/g/b/l;->a(Lf/a/a/g/b/l;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received new playback state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lf/a/a/g/b/k;->d:Lf/a/a/g/b/l;

    invoke-static {p1}, Lf/a/a/g/b/l;->a(Lf/a/a/g/b/l;)Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lf/a/a/g/b/k;->d:Lf/a/a/g/b/l;

    invoke-static {v0}, Lf/a/a/g/b/l;->b(Lf/a/a/g/b/l;)Lb/i/a/q;

    move-result-object v0

    const/16 v1, 0x94

    invoke-virtual {v0, v1, p1}, Lb/i/a/q;->a(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
