.class Landroid/support/v4/media/MediaBrowserCompat$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$n;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$n;)V
    .locals 0

    .line 765
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$n$a;->a:Landroid/support/v4/media/MediaBrowserCompat$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n$a;->a:Landroid/support/v4/media/MediaBrowserCompat$n;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$n;->c:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n$a;->a:Landroid/support/v4/media/MediaBrowserCompat$n;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$n;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$m;

    :goto_0
    if-nez v0, :cond_1

    .line 772
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n$a;->a:Landroid/support/v4/media/MediaBrowserCompat$n;

    .line 773
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 772
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$n;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 776
    :cond_1
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 777
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$m;->getCallbacks()Ljava/util/List;

    move-result-object v2

    .line 778
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$m;->getOptionsList()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 779
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 780
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    if-nez v4, :cond_2

    .line 782
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$n$a;->a:Landroid/support/v4/media/MediaBrowserCompat$n;

    invoke-virtual {v4, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$n;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    .line 784
    :cond_2
    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$n$a;->a:Landroid/support/v4/media/MediaBrowserCompat$n;

    if-nez p2, :cond_3

    move-object v6, v1

    goto :goto_3

    :cond_3
    const/4 v6, -0x1

    const-string v7, "android.media.browse.extra.PAGE"

    .line 1801
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "android.media.browse.extra.PAGE_SIZE"

    .line 1802
    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v7, v6, :cond_4

    if-ne v8, v6, :cond_4

    move-object v6, p2

    goto :goto_3

    :cond_4
    mul-int v6, v8, v7

    add-int v9, v6, v8

    if-ltz v7, :cond_7

    if-lez v8, :cond_7

    .line 1808
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_5

    goto :goto_2

    .line 1811
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-le v9, v7, :cond_6

    .line 1812
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    .line 1814
    :cond_6
    invoke-interface {p2, v6, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_3

    .line 1809
    :cond_7
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 784
    :goto_3
    invoke-virtual {v5, p1, v6, v4}, Landroid/support/v4/media/MediaBrowserCompat$n;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 793
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n$a;->a:Landroid/support/v4/media/MediaBrowserCompat$n;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$n;->onError(Ljava/lang/String;)V

    return-void
.end method
