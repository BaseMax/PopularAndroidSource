.class final Landroid/support/v4/media/MediaBrowserCompat$i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$i;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$i;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$i;)V
    .locals 0

    .line 1086
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i$2;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1090
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i$2;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 1092
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i$2;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$i;->h:Landroid/support/v4/media/MediaBrowserCompat$l;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i$2;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3163
    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/media/MediaBrowserCompat$l;->a(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1096
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteException during connect for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i$2;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1099
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i$2;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget v0, v0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 1100
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i$2;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$i;->a()V

    if-eqz v0, :cond_1

    .line 1104
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i$2;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iput v0, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 1106
    :cond_1
    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->a:Z

    if-eqz v0, :cond_2

    .line 1108
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i$2;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$i;->b()V

    :cond_2
    return-void
.end method
