.class public final Lc/c/a/b/f/c;
.super Ljava/lang/Object;
.source "NotificationChannels.kt"


# static fields
.field public static final a:Lc/c/a/b/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/b/f/c;

    invoke-direct {v0}, Lc/c/a/b/f/c;-><init>()V

    sput-object v0, Lc/c/a/b/f/c;->a:Lc/c/a/b/f/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/NotificationManager;)V
    .locals 6

    const-string v0, "notificationManager"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 1
    new-array v0, v0, [Landroid/app/NotificationChannel;

    .line 2
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    const-string v3, "downloads"

    const-string v4, "Downloads"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 4
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v4, "updates"

    const-string v5, "Updates"

    invoke-direct {v1, v4, v5, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 5
    invoke-virtual {v1, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 6
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v3, "promotions"

    const-string v4, "Promotions"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 7
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v3, "developer_reply"

    const-string v4, "Developer Reply"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v1, v0, v2

    .line 8
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v3, "iab"

    const-string v4, "In App Billing"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Lh/a/l;->d([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method
