.class public Lb/u/a/a;
.super Lb/i/a/n$e;
.source "NotificationCompat.java"


# instance fields
.field public e:[I

.field public f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field public g:Z

.field public h:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/i/a/n$e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/u/a/a;->e:[I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 32
    sget p1, Lb/u/k;->notification_template_big_media_narrow:I

    goto :goto_0

    :cond_0
    sget p1, Lb/u/k;->notification_template_big_media:I

    :goto_0
    return p1
.end method

.method public a(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;
    .locals 1

    .line 9
    iget-object v0, p0, Lb/u/a/a;->e:[I

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 11
    :cond_0
    iget-object v0, p0, Lb/u/a/a;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    :cond_1
    return-object p1
.end method

.method public a()Landroid/widget/RemoteViews;
    .locals 6

    .line 19
    iget-object v0, p0, Lb/i/a/n$e;->a:Lb/i/a/n$d;

    iget-object v0, v0, Lb/i/a/n$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Lb/u/a/a;->a(I)I

    move-result v1

    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v2, v1, v2}, Lb/i/a/n$e;->a(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 22
    sget v3, Lb/u/i;->media_actions:I

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 23
    iget-object v4, p0, Lb/i/a/n$e;->a:Lb/i/a/n$d;

    iget-object v4, v4, Lb/i/a/n$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/i/a/n$a;

    invoke-virtual {p0, v4}, Lb/u/a/a;->a(Lb/i/a/n$a;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 24
    sget v5, Lb/u/i;->media_actions:I

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_0
    iget-boolean v0, p0, Lb/u/a/a;->g:Z

    if-eqz v0, :cond_1

    .line 26
    sget v0, Lb/u/i;->cancel_action:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 27
    sget v0, Lb/u/i;->cancel_action:I

    iget-object v2, p0, Lb/i/a/n$e;->a:Lb/i/a/n$d;

    iget-object v2, v2, Lb/i/a/n$d;->a:Landroid/content/Context;

    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/u/j;->cancel_button_image_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "setAlpha"

    .line 29
    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 30
    sget v0, Lb/u/i;->cancel_action:I

    iget-object v2, p0, Lb/u/a/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 31
    :cond_1
    sget v0, Lb/u/i;->cancel_action:I

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    return-object v1
.end method

.method public final a(Lb/i/a/n$a;)Landroid/widget/RemoteViews;
    .locals 4

    .line 13
    invoke-virtual {p1}, Lb/i/a/n$a;->a()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lb/i/a/n$e;->a:Lb/i/a/n$d;

    iget-object v2, v2, Lb/i/a/n$d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lb/u/k;->notification_media_action:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 15
    sget v2, Lb/u/i;->action0:I

    invoke-virtual {p1}, Lb/i/a/n$a;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-nez v0, :cond_1

    .line 16
    sget v0, Lb/u/i;->action0:I

    invoke-virtual {p1}, Lb/i/a/n$a;->a()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 17
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_2

    .line 18
    sget v0, Lb/u/i;->action0:I

    invoke-virtual {p1}, Lb/i/a/n$a;->i()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_2
    return-object v1
.end method

.method public a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lb/u/a/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lb/u/a/a;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object p0
.end method

.method public varargs a([I)Lb/u/a/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/u/a/a;->e:[I

    return-object p0
.end method

.method public a(Lb/i/a/m;)V
    .locals 2

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 4
    invoke-interface {p1}, Lb/i/a/m;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lb/u/a/a;->a(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lb/u/a/a;->g:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p1}, Lb/i/a/m;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Landroid/widget/RemoteViews;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lb/u/a/a;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v2, v0, v1}, Lb/i/a/n$e;->a(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3
    iget-object v3, p0, Lb/i/a/n$e;->a:Lb/i/a/n$d;

    iget-object v3, v3, Lb/i/a/n$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4
    iget-object v4, p0, Lb/u/a/a;->e:[I

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    array-length v4, v4

    const/4 v5, 0x3

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6
    :goto_0
    sget v5, Lb/u/i;->media_actions:I

    invoke-virtual {v0, v5}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v4, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    if-ge v5, v3, :cond_1

    .line 7
    iget-object v6, p0, Lb/i/a/n$e;->a:Lb/i/a/n$d;

    iget-object v6, v6, Lb/i/a/n$d;->b:Ljava/util/ArrayList;

    iget-object v7, p0, Lb/u/a/a;->e:[I

    aget v7, v7, v5

    .line 8
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/i/a/n$a;

    .line 9
    invoke-virtual {p0, v6}, Lb/u/a/a;->a(Lb/i/a/n$a;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 10
    sget v7, Lb/u/i;->media_actions:I

    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    .line 13
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_2
    iget-boolean v1, p0, Lb/u/a/a;->g:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 15
    sget v1, Lb/u/i;->end_padder:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 16
    sget v1, Lb/u/i;->cancel_action:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 17
    sget v1, Lb/u/i;->cancel_action:I

    iget-object v2, p0, Lb/u/a/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 18
    sget v1, Lb/u/i;->cancel_action:I

    iget-object v2, p0, Lb/i/a/n$e;->a:Lb/i/a/n$d;

    iget-object v2, v2, Lb/i/a/n$d;->a:Landroid/content/Context;

    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/u/j;->cancel_button_image_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "setAlpha"

    .line 20
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2

    .line 21
    :cond_3
    sget v1, Lb/u/i;->end_padder:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 22
    sget v1, Lb/u/i;->cancel_action:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    return-object v0
.end method

.method public b(Lb/i/a/m;)Landroid/widget/RemoteViews;
    .locals 1

    .line 23
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p0}, Lb/u/a/a;->a()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    .line 3
    sget v0, Lb/u/k;->notification_template_media:I

    return v0
.end method

.method public c(Lb/i/a/m;)Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/u/a/a;->b()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method
