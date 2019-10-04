.class public final Lcab/snapp/notificationmanager/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/notificationmanager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroidx/core/app/NotificationCompat$Style;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private i:Landroid/net/Uri;

.field private j:Landroid/app/PendingIntent;

.field private k:Landroid/widget/RemoteViews;

.field private l:Landroid/widget/RemoteViews;

.field private m:[J

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Context;)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcab/snapp/notificationmanager/a$a;->g:Z

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 162
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcab/snapp/notificationmanager/a$a;->m:[J

    .line 168
    iput-object p1, p0, Lcab/snapp/notificationmanager/a$a;->a:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lcab/snapp/notificationmanager/a$a;->j:Landroid/app/PendingIntent;

    .line 170
    iput-object p3, p0, Lcab/snapp/notificationmanager/a$a;->n:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final build()Landroid/app/Notification;
    .locals 3

    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    .line 254
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->n:Landroid/content/Context;

    iget-object v2, p0, Lcab/snapp/notificationmanager/a$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/notificationmanager/a$a;->b:I

    .line 255
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->e:Ljava/lang/String;

    .line 256
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->f:Ljava/lang/String;

    .line 257
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcab/snapp/notificationmanager/a$a;->g:Z

    .line 258
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->i:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 264
    :cond_0
    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 268
    :cond_1
    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->j:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 269
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 272
    :cond_2
    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->k:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_3

    .line 274
    new-instance v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 275
    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->k:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 277
    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->l:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_3

    .line 279
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 286
    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 289
    :cond_4
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->n:Landroid/content/Context;

    iget-object v2, p0, Lcab/snapp/notificationmanager/a$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/notificationmanager/a$a;->b:I

    .line 290
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->e:Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->f:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->m:[J

    .line 293
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcab/snapp/notificationmanager/a$a;->g:Z

    .line 294
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 296
    iget v1, p0, Lcab/snapp/notificationmanager/a$a;->h:I

    if-nez v1, :cond_5

    const v1, -0xffff01

    iput v1, p0, Lcab/snapp/notificationmanager/a$a;->h:I

    .line 297
    :cond_5
    iget v1, p0, Lcab/snapp/notificationmanager/a$a;->h:I

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    .line 299
    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->i:Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 300
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 303
    :cond_6
    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 304
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 307
    :cond_7
    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->j:Landroid/app/PendingIntent;

    if-eqz v1, :cond_8

    .line 308
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 311
    :cond_8
    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->d:Landroidx/core/app/NotificationCompat$Style;

    if-eqz v1, :cond_9

    .line 313
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 316
    :cond_9
    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->k:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_a

    .line 318
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 321
    :cond_a
    iget-object v1, p0, Lcab/snapp/notificationmanager/a$a;->l:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_b

    .line 323
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 326
    :cond_b
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final setAutoCancelable(Z)Lcab/snapp/notificationmanager/a$a;
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcab/snapp/notificationmanager/a$a;->g:Z

    return-object p0
.end method

.method public final setContent(Ljava/lang/String;)Lcab/snapp/notificationmanager/a$a;
    .locals 0

    .line 201
    iput-object p1, p0, Lcab/snapp/notificationmanager/a$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final setExpandedLayout(Landroid/widget/RemoteViews;)Lcab/snapp/notificationmanager/a$a;
    .locals 0

    .line 237
    iput-object p1, p0, Lcab/snapp/notificationmanager/a$a;->l:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public final setLargeIcon(Landroid/graphics/Bitmap;)Lcab/snapp/notificationmanager/a$a;
    .locals 0

    .line 183
    iput-object p1, p0, Lcab/snapp/notificationmanager/a$a;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final setLayout(Landroid/widget/RemoteViews;)Lcab/snapp/notificationmanager/a$a;
    .locals 0

    .line 231
    iput-object p1, p0, Lcab/snapp/notificationmanager/a$a;->k:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public final setLight(I)Lcab/snapp/notificationmanager/a$a;
    .locals 0

    .line 213
    iput p1, p0, Lcab/snapp/notificationmanager/a$a;->h:I

    return-object p0
.end method

.method public final setPendingIntent(Landroid/app/PendingIntent;)Lcab/snapp/notificationmanager/a$a;
    .locals 0

    .line 225
    iput-object p1, p0, Lcab/snapp/notificationmanager/a$a;->j:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final setSmallIconResource(I)Lcab/snapp/notificationmanager/a$a;
    .locals 0

    .line 177
    iput p1, p0, Lcab/snapp/notificationmanager/a$a;->b:I

    return-object p0
.end method

.method public final setSound(Landroid/net/Uri;)Lcab/snapp/notificationmanager/a$a;
    .locals 0

    .line 219
    iput-object p1, p0, Lcab/snapp/notificationmanager/a$a;->i:Landroid/net/Uri;

    return-object p0
.end method

.method public final setStyle(Landroidx/core/app/NotificationCompat$Style;)Lcab/snapp/notificationmanager/a$a;
    .locals 0

    .line 189
    iput-object p1, p0, Lcab/snapp/notificationmanager/a$a;->d:Landroidx/core/app/NotificationCompat$Style;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcab/snapp/notificationmanager/a$a;
    .locals 0

    .line 195
    iput-object p1, p0, Lcab/snapp/notificationmanager/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final setVibrate([J)Lcab/snapp/notificationmanager/a$a;
    .locals 0

    .line 243
    iput-object p1, p0, Lcab/snapp/notificationmanager/a$a;->m:[J

    return-object p0
.end method
