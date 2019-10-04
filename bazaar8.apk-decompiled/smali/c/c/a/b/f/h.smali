.class public final Lc/c/a/b/f/h;
.super Ljava/lang/Object;
.source "NotificationManager.kt"


# static fields
.field public static final synthetic a:[Lh/i/i;

.field public static final b:Lh/f/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/a<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/c/a/b/f/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Object;

.field public static final e:Lh/c;

.field public static final f:Lh/c;

.field public static final g:Lh/c;

.field public static final h:Lc/c/a/b/f/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/f/h;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "context"

    const-string v4, "getContext()Landroid/content/Context;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/f/h;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "manager"

    const-string v4, "getManager()Landroid/app/NotificationManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/f/h;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "managerCompat"

    const-string v4, "getManagerCompat()Landroidx/core/app/NotificationManagerCompat;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/b/f/h;->a:[Lh/i/i;

    .line 1
    new-instance v0, Lc/c/a/b/f/h;

    invoke-direct {v0}, Lc/c/a/b/f/h;-><init>()V

    sput-object v0, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 2
    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationManager$DEFAULT_PENDING_INTENT$1;->a:Lcom/farsitel/bazaar/app/notification/NotificationManager$DEFAULT_PENDING_INTENT$1;

    sput-object v1, Lc/c/a/b/f/h;->b:Lh/f/a/a;

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lc/c/a/b/f/h;->d:Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationManager$context$2;->a:Lcom/farsitel/bazaar/app/notification/NotificationManager$context$2;

    invoke-static {v1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v1

    sput-object v1, Lc/c/a/b/f/h;->e:Lh/c;

    .line 6
    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationManager$manager$2;->a:Lcom/farsitel/bazaar/app/notification/NotificationManager$manager$2;

    invoke-static {v1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v1

    sput-object v1, Lc/c/a/b/f/h;->f:Lh/c;

    .line 7
    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationManager$managerCompat$2;->a:Lcom/farsitel/bazaar/app/notification/NotificationManager$managerCompat$2;

    invoke-static {v1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v1

    sput-object v1, Lc/c/a/b/f/h;->g:Lh/c;

    const/16 v1, 0x1a

    .line 8
    invoke-static {v1}, Lc/c/a/c/h/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    sget-object v1, Lc/c/a/b/f/c;->a:Lc/c/a/b/f/c;

    invoke-virtual {v0}, Lc/c/a/b/f/h;->c()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Lc/c/a/b/f/c;->a(Landroid/app/NotificationManager;)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/b/f/h;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/b/f/h;->b()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/b/f/h;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/Object;)Lb/i/a/n$b;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 125
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lc/c/a/b/f/h;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)Lb/i/a/n$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/b/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/i/a/n$c;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 123
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/b/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/i/a/n$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/b/f/h;ILjava/lang/String;ILjava/util/List;JLjava/lang/String;Lh/f/a/a;Lb/i/a/n$e;ILjava/lang/Object;)Lb/i/a/n$d;
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const v1, 0x7f0800e6

    const v5, 0x7f0800e6

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 2
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v7, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    const-string v1, "downloads"

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 4
    sget-object v1, Lc/c/a/b/f/h;->b:Lh/f/a/a;

    move-object v10, v1

    goto :goto_4

    :cond_4
    move-object/from16 v10, p8

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_5

    :cond_5
    move-object/from16 v11, p9

    :goto_5
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    .line 5
    invoke-virtual/range {v2 .. v11}, Lc/c/a/b/f/h;->a(ILjava/lang/String;ILjava/util/List;JLjava/lang/String;Lh/f/a/a;Lb/i/a/n$e;)Lb/i/a/n$d;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lc/c/a/b/f/h;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/b/f/h;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/util/List;JLjava/lang/String;Lh/f/a/a;ILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 50
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_2

    :cond_2
    move-wide/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    const-string v1, "downloads"

    move-object v11, v1

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    move-object v12, v2

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p4

    .line 52
    invoke-virtual/range {v3 .. v12}, Lc/c/a/b/f/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/util/List;JLjava/lang/String;Lh/f/a/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lh/f/a/a;)Landroid/app/Notification;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/app/notification/NotificationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lb/i/a/n$a;",
            ">;",
            "Lh/f/a/a<",
            "Landroid/app/PendingIntent;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    const-string v2, "notificationType"

    invoke-static {v0, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "entityId"

    invoke-static {v1, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "title"

    invoke-static {v4, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "notificationActions"

    move-object/from16 v6, p5

    invoke-static {v6, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v14, Lc/c/a/b/f/h;->d:Ljava/lang/Object;

    monitor-enter v14

    .line 84
    :try_start_0
    sget-object v2, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v13, 0x1

    if-nez v2, :cond_0

    .line 85
    new-instance v12, Lc/c/a/b/f/d;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v12, v4, v2}, Lc/c/a/b/f/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    sget-object v2, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v3

    const v5, 0x7f08015f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v16, 0xb0

    const/16 v17, 0x0

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v10, p6

    move-object v15, v12

    move/from16 v12, v16

    const/4 v0, 0x1

    move-object/from16 v13, v17

    .line 88
    invoke-static/range {v2 .. v13}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;ILjava/lang/String;ILjava/util/List;JLjava/lang/String;Lh/f/a/a;Lb/i/a/n$e;ILjava/lang/Object;)Lb/i/a/n$d;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v0}, Lb/i/a/n$d;->c(Z)Lb/i/a/n$d;

    const-string v3, "defaultNotificationBuild\u2026       ).setOngoing(true)"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v3, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v4

    .line 92
    new-instance v5, Lc/c/a/b/f/f;

    .line 93
    new-array v6, v0, [Lkotlin/Pair;

    invoke-static {v1, v15}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v6}, Lh/a/A;->a([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 94
    invoke-direct {v5, v2, v1}, Lc/c/a/b/f/f;-><init>(Lb/i/a/n$d;Ljava/util/Map;)V

    .line 95
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 96
    sget-object v2, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/a/b/f/f;

    .line 97
    invoke-virtual {v2}, Lc/c/a/b/f/f;->b()Lb/i/a/n$d;

    move-result-object v3

    .line 98
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v4, v5}, Lc/c/a/b/f/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v2, v3

    .line 99
    :goto_0
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v14

    .line 101
    sget-object v1, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/b/f/f;

    .line 102
    invoke-virtual/range {p0 .. p0}, Lc/c/a/b/f/h;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "context.resources"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0}, Lc/c/a/b/f/f;->e(Landroid/content/res/Resources;Lcom/farsitel/bazaar/app/notification/NotificationType;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v1}, Lc/c/a/b/f/f;->d()I

    move-result v1

    .line 104
    invoke-virtual {v2, v3}, Lb/i/a/n$d;->c(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    const/16 v3, 0x64

    const/4 v5, 0x0

    .line 105
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-gez v1, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v2, v3, v6, v7}, Lb/i/a/n$d;->a(IIZ)Lb/i/a/n$d;

    if-ltz v1, :cond_2

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v6, "Locale.getDefault()"

    invoke-static {v3, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    array-length v1, v4

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%d%%"

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang.String.format(locale, this, *args)"

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lb/i/a/n$d;->b(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    .line 107
    :cond_2
    invoke-virtual {v2}, Lb/i/a/n$d;->a()Landroid/app/Notification;

    move-result-object v1

    .line 108
    invoke-virtual/range {p0 .. p0}, Lc/c/a/b/f/h;->d()Lb/i/a/q;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lb/i/a/q;->a(ILandroid/app/Notification;)V

    const-string v0, "notification"

    .line 109
    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 110
    monitor-exit v14

    throw v0
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)Lb/i/a/n$b;
    .locals 1

    .line 126
    new-instance v0, Lb/i/a/n$b;

    invoke-direct {v0}, Lb/i/a/n$b;-><init>()V

    invoke-virtual {v0, p1}, Lb/i/a/n$b;->a(Ljava/lang/CharSequence;)Lb/i/a/n$b;

    invoke-virtual {v0, p3}, Lb/i/a/n$b;->b(Ljava/lang/CharSequence;)Lb/i/a/n$b;

    invoke-virtual {v0, p2}, Lb/i/a/n$b;->b(Landroid/graphics/Bitmap;)Lb/i/a/n$b;

    invoke-virtual {v0, p4}, Lb/i/a/n$b;->a(Landroid/graphics/Bitmap;)Lb/i/a/n$b;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/i/a/n$c;
    .locals 1

    .line 124
    new-instance v0, Lb/i/a/n$c;

    invoke-direct {v0}, Lb/i/a/n$c;-><init>()V

    invoke-virtual {v0, p1}, Lb/i/a/n$c;->b(Ljava/lang/CharSequence;)Lb/i/a/n$c;

    invoke-virtual {v0, p3}, Lb/i/a/n$c;->c(Ljava/lang/CharSequence;)Lb/i/a/n$c;

    invoke-virtual {v0, p2}, Lb/i/a/n$c;->a(Ljava/lang/CharSequence;)Lb/i/a/n$c;

    return-object v0
.end method

.method public final a(ILjava/lang/String;ILjava/util/List;JLjava/lang/String;Lh/f/a/a;Lb/i/a/n$e;)Lb/i/a/n$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lb/i/a/n$a;",
            ">;J",
            "Ljava/lang/String;",
            "Lh/f/a/a<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Lb/i/a/n$e;",
            ")",
            "Lb/i/a/n$d;"
        }
    .end annotation

    .line 6
    new-instance v0, Lb/i/a/n$d;

    invoke-virtual {p0}, Lc/c/a/b/f/h;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p7}, Lb/i/a/n$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p3}, Lb/i/a/n$d;->c(I)Lb/i/a/n$d;

    const/4 p3, 0x1

    .line 8
    invoke-virtual {v0, p3}, Lb/i/a/n$d;->a(Z)Lb/i/a/n$d;

    .line 9
    invoke-virtual {p0}, Lc/c/a/b/f/h;->b()Landroid/content/Context;

    move-result-object p3

    const p7, 0x7f06005a

    invoke-static {p3, p7}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {v0, p3}, Lb/i/a/n$d;->a(I)Lb/i/a/n$d;

    .line 10
    invoke-virtual {v0, p2}, Lb/i/a/n$d;->c(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    if-eqz p9, :cond_0

    .line 11
    invoke-virtual {v0, p9}, Lb/i/a/n$d;->a(Lb/i/a/n$e;)Lb/i/a/n$d;

    .line 12
    :cond_0
    invoke-virtual {v0, p5, p6}, Lb/i/a/n$d;->a(J)Lb/i/a/n$d;

    .line 13
    invoke-virtual {p0, p1}, Lc/c/a/b/f/h;->b(I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/i/a/n$d;->b(Landroid/app/PendingIntent;)Lb/i/a/n$d;

    if-eqz p8, :cond_1

    .line 14
    invoke-interface {p8}, Lh/f/a/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {v0, p1}, Lb/i/a/n$d;->a(Landroid/app/PendingIntent;)Lb/i/a/n$d;

    .line 16
    :cond_2
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/i/a/n$a;

    .line 17
    invoke-virtual {v0, p2}, Lb/i/a/n$d;->a(Lb/i/a/n$a;)Lb/i/a/n$d;

    goto :goto_1

    :cond_3
    const-string p1, "NotificationCompat.Build\u2026          }\n            }"

    .line 18
    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/app/notification/NotificationType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/app/notification/NotificationType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "notificationType"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    sget-object v0, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/b/f/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/b/f/f;->c()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lh/a/u;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 127
    sget-object v0, Lc/c/a/b/f/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 129
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit v0

    .line 131
    invoke-virtual {p0}, Lc/c/a/b/f/h;->d()Lb/i/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lb/i/a/q;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 132
    monitor-exit v0

    throw v1
.end method

.method public final a(I)V
    .locals 2

    .line 133
    sget-object v0, Lc/c/a/b/f/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 135
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit v0

    .line 137
    invoke-virtual {p0}, Lc/c/a/b/f/h;->d()Lb/i/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/i/a/q;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 138
    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/farsitel/bazaar/app/fcm/FCMMessage;)V
    .locals 30

    move-object/from16 v1, p1

    const-string v0, "message"

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v2, Lcom/farsitel/bazaar/app/notification/NotificationType;->PUSH_NOTIFICATION:Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->f()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/i/a/n$c;

    move-result-object v18

    .line 21
    invoke-virtual/range {p0 .. p0}, Lc/c/a/b/f/h;->b()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f10002a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "context.getString(R.string.app_name)"

    invoke-static {v11, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-string v16, "promotions"

    const/16 v17, 0x0

    const/16 v19, 0x5c

    const/16 v20, 0x0

    move-object/from16 v9, p0

    .line 23
    invoke-static/range {v9 .. v20}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;ILjava/lang/String;ILjava/util/List;JLjava/lang/String;Lh/f/a/a;Lb/i/a/n$e;ILjava/lang/Object;)Lb/i/a/n$d;

    move-result-object v3

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lb/i/a/n$d;->d(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    const/4 v0, 0x1

    .line 25
    invoke-virtual {v3, v0}, Lb/i/a/n$d;->a(Z)Lb/i/a/n$d;

    const/4 v0, -0x1

    .line 26
    invoke-virtual {v3, v0}, Lb/i/a/n$d;->b(I)Lb/i/a/n$d;

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lb/i/a/n$d;->b(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->g()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {v3, v4}, Lb/i/a/n$d;->a(Landroid/net/Uri;)Lb/i/a/n$d;

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->d()Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->c()Landroid/content/Intent;

    move-result-object v0

    .line 32
    invoke-virtual/range {p0 .. p0}, Lc/c/a/b/f/h;->b()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v3, v0}, Lb/i/a/n$d;->a(Landroid/app/PendingIntent;)Lb/i/a/n$d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 36
    sget-object v21, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lc/c/a/b/f/h;->b()Landroid/content/Context;

    move-result-object v22

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->e()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->j()Ljava/lang/String;

    move-result-object v25

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->h()Ljava/lang/String;

    move-result-object v26

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->f()Ljava/lang/String;

    move-result-object v27

    .line 42
    invoke-virtual/range {p0 .. p0}, Lc/c/a/b/f/h;->d()Lb/i/a/q;

    move-result-object v28

    .line 43
    invoke-virtual {v2}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v29

    move-object/from16 v24, v3

    .line 44
    invoke-virtual/range {v21 .. v29}, Lc/c/a/d/g/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lb/i/a/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/i/a/q;I)V

    goto :goto_1

    .line 45
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v4

    .line 46
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lc/c/a/b/f/h;->d()Lb/i/a/q;

    move-result-object v0

    .line 47
    invoke-virtual {v2}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v1

    .line 48
    invoke-virtual {v3}, Lb/i/a/n$d;->a()Landroid/app/Notification;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lb/i/a/q;->a(ILandroid/app/Notification;)V

    :goto_1
    return-void
.end method

.method public final declared-synchronized a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "notificationType"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/b/f/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc/c/a/b/f/f;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    .line 113
    sget-object p2, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/b/f/f;

    invoke-virtual {p1}, Lc/c/a/b/f/f;->a()V

    goto :goto_0

    .line 114
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    sget-object v1, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/b/f/f;

    invoke-virtual {v1, p2}, Lc/c/a/b/f/f;->a(Ljava/lang/String;)V

    .line 116
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 117
    sget-object p2, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    sget-object p2, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result p1

    invoke-virtual {p2, p1}, Lc/c/a/b/f/h;->a(I)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lh/a/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 120
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/b/f/d;

    .line 121
    sget-object v1, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1, p2, v0}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;Lc/c/a/b/f/d;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 122
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;Lc/c/a/b/f/d;)V
    .locals 13

    .line 139
    new-instance v0, Lcom/farsitel/bazaar/app/notification/NotificationManager$refreshNotificationWithType$1;

    move-object v5, p1

    move-object/from16 v1, p3

    invoke-direct {v0, v1, p1}, Lcom/farsitel/bazaar/app/notification/NotificationManager$refreshNotificationWithType$1;-><init>(Lc/c/a/b/f/d;Lcom/farsitel/bazaar/app/notification/NotificationType;)V

    .line 140
    sget-object v2, Lc/c/a/b/f/g;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 141
    invoke-virtual/range {p3 .. p3}, Lc/c/a/b/f/d;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual/range {p3 .. p3}, Lc/c/a/b/f/d;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf4

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    .line 143
    invoke-static/range {v1 .. v12}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/util/List;JLjava/lang/String;Lh/f/a/a;ILjava/lang/Object;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcom/farsitel/bazaar/app/notification/NotificationManager$refreshNotificationWithType$1;->invoke()V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lc/c/a/b/f/d;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    invoke-virtual/range {p3 .. p3}, Lc/c/a/b/f/d;->a()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual/range {p3 .. p3}, Lc/c/a/b/f/d;->b()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v0

    .line 149
    invoke-virtual/range {v1 .. v7}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lh/f/a/a;)Landroid/app/Notification;

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0

    .line 151
    :cond_3
    invoke-virtual {v0}, Lcom/farsitel/bazaar/app/notification/NotificationManager$refreshNotificationWithType$1;->invoke()V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/util/List;JLjava/lang/String;Lh/f/a/a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lcom/farsitel/bazaar/app/notification/NotificationType;",
            "Ljava/util/List<",
            "+",
            "Lb/i/a/n$a;",
            ">;J",
            "Ljava/lang/String;",
            "Lh/f/a/a<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p4

    const-string v1, "entityId"

    invoke-static {v0, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "entityValue"

    invoke-static {v3, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "notificationType"

    invoke-static {v13, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "notificationActions"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "channelId"

    move-object/from16 v8, p8

    invoke-static {v8, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v14, Lc/c/a/b/f/d;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v14, v3, v1, v2, v1}, Lc/c/a/b/f/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILh/f/b/f;)V

    .line 54
    sget-object v15, Lc/c/a/b/f/h;->d:Ljava/lang/Object;

    monitor-enter v15

    .line 55
    :try_start_0
    sget-object v2, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual/range {p4 .. p4}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 56
    sget-object v1, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 57
    invoke-virtual/range {p4 .. p4}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v2

    const v4, 0x7f0800e6

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 58
    invoke-static/range {v1 .. v12}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;ILjava/lang/String;ILjava/util/List;JLjava/lang/String;Lh/f/a/a;Lb/i/a/n$e;ILjava/lang/Object;)Lb/i/a/n$d;

    move-result-object v1

    .line 59
    sget-object v2, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    .line 60
    invoke-virtual/range {p4 .. p4}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v3

    .line 61
    new-instance v4, Lc/c/a/b/f/f;

    const/4 v5, 0x1

    .line 62
    new-array v5, v5, [Lkotlin/Pair;

    const/4 v6, 0x0

    invoke-static {v0, v14}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v5}, Lh/a/A;->a([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 63
    invoke-direct {v4, v1, v0}, Lc/c/a/b/f/f;-><init>(Lb/i/a/n$d;Ljava/util/Map;)V

    .line 64
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_0
    sget-object v2, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual/range {p4 .. p4}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/a/b/f/f;

    .line 66
    invoke-virtual {v2}, Lc/c/a/b/f/f;->b()Lb/i/a/n$d;

    move-result-object v4

    .line 67
    invoke-virtual {v2, v0, v3, v1}, Lc/c/a/b/f/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v1, v4

    .line 68
    :goto_0
    sget-object v0, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v15

    .line 70
    sget-object v0, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual/range {p4 .. p4}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/b/f/f;

    invoke-virtual/range {p0 .. p0}, Lc/c/a/b/f/h;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "context.resources"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v13}, Lc/c/a/b/f/f;->e(Landroid/content/res/Resources;Lcom/farsitel/bazaar/app/notification/NotificationType;)Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v2, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual/range {p4 .. p4}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/a/b/f/f;

    invoke-virtual/range {p0 .. p0}, Lc/c/a/b/f/h;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "context.resources"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v13}, Lc/c/a/b/f/f;->a(Landroid/content/res/Resources;Lcom/farsitel/bazaar/app/notification/NotificationType;)Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {v1, v0}, Lb/i/a/n$d;->c(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    .line 73
    invoke-virtual {v1, v6}, Lb/i/a/n$d;->b(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    .line 74
    sget-object v4, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v5, v0

    invoke-static/range {v4 .. v9}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/i/a/n$c;

    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Lb/i/a/n$d;->a(Lb/i/a/n$e;)Lb/i/a/n$d;

    if-eqz p3, :cond_1

    .line 76
    sget-object v4, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v5, v0

    move-object/from16 v6, p3

    invoke-static/range {v4 .. v10}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/Object;)Lb/i/a/n$b;

    move-result-object v0

    .line 77
    invoke-virtual {v1, v0}, Lb/i/a/n$d;->a(Lb/i/a/n$e;)Lb/i/a/n$d;

    .line 78
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lc/c/a/b/f/h;->d()Lb/i/a/q;

    move-result-object v0

    .line 79
    invoke-virtual/range {p4 .. p4}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result v2

    .line 80
    invoke-virtual {v1}, Lb/i/a/n$d;->a()Landroid/app/Notification;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v2, v1}, Lb/i/a/q;->a(ILandroid/app/Notification;)V

    return-void

    :catchall_0
    move-exception v0

    .line 82
    monitor-exit v15

    throw v0
.end method

.method public final b(I)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lc/c/a/b/f/h;->b()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/farsitel/bazaar/app/notification/NotificationActionReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notificationDelete"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notificationId"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Lc/c/a/b/f/h;->b()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "PendingIntent.getBroadca\u2026tent.FLAG_UPDATE_CURRENT)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b()Landroid/content/Context;
    .locals 3

    sget-object v0, Lc/c/a/b/f/h;->e:Lh/c;

    sget-object v1, Lc/c/a/b/f/h;->a:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final b(Lcom/farsitel/bazaar/app/notification/NotificationType;)Z
    .locals 1

    const-string v0, "notificationType"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lc/c/a/b/f/h;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/app/notification/NotificationType;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/b/f/f;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/b/f/f;->c()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Landroid/app/NotificationManager;
    .locals 3

    sget-object v0, Lc/c/a/b/f/h;->f:Lh/c;

    sget-object v1, Lc/c/a/b/f/h;->a:[Lh/i/i;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public final d()Lb/i/a/q;
    .locals 3

    sget-object v0, Lc/c/a/b/f/h;->g:Lh/c;

    sget-object v1, Lc/c/a/b/f/h;->a:[Lh/i/i;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/i/a/q;

    return-object v0
.end method
