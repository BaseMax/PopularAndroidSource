.class public final Lc/c/a/b/f/a/c;
.super Ljava/lang/Object;
.source "PardakhtNotificationManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/b/f/a/c$a;
    }
.end annotation


# static fields
.field public static final synthetic a:[Lh/i/i;

.field public static final b:Lc/c/a/b/f/a/c$a;


# instance fields
.field public final c:Lc/c/a/e/d/u/a;

.field public final d:Lh/c;

.field public e:J

.field public final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/f/a/c;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "locale"

    const-string v4, "getLocale()Ljava/util/Locale;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/b/f/a/c;->a:[Lh/i/i;

    new-instance v0, Lc/c/a/b/f/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/b/f/a/c$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/b/f/a/c;->b:Lc/c/a/b/f/a/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/b/f/a/c;->f:Landroid/content/Context;

    .line 2
    sget-object p1, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    iget-object v0, p0, Lc/c/a/b/f/a/c;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/f/a/c;->c:Lc/c/a/e/d/u/a;

    .line 3
    new-instance p1, Lcom/farsitel/bazaar/app/notification/type/PardakhtNotificationManager$locale$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/notification/type/PardakhtNotificationManager$locale$2;-><init>(Lc/c/a/b/f/a/c;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/f/a/c;->d:Lh/c;

    .line 4
    iget-object p1, p0, Lc/c/a/b/f/a/c;->c:Lc/c/a/e/d/u/a;

    invoke-virtual {p1}, Lc/c/a/e/d/u/a;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lc/c/a/b/f/a/c;->e:J

    return-void
.end method

.method public static final synthetic a(Lc/c/a/b/f/a/c;)Lc/c/a/e/d/u/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/f/a/c;->c:Lc/c/a/e/d/u/a;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/Locale;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/f/a/c;->d:Lh/c;

    sget-object v1, Lc/c/a/b/f/a/c;->a:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 13

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lc/c/a/b/f/a/c;->e:J

    sub-long v2, v0, v2

    const v4, 0xf731400

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 4
    :cond_0
    iput-wide v0, p0, Lc/c/a/b/f/a/c;->e:J

    .line 5
    iget-object v2, p0, Lc/c/a/b/f/a/c;->c:Lc/c/a/e/d/u/a;

    invoke-virtual {v2, v0, v1}, Lc/c/a/e/d/u/a;->a(J)V

    .line 6
    :try_start_0
    sget-object v0, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    iget-object v1, p0, Lc/c/a/b/f/a/c;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lc/c/a/b/f/a/c;->a()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lc/c/a/c/h/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    move-object v3, v0

    .line 7
    sget-object v0, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    iget-object v1, p0, Lc/c/a/b/f/a/c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lc/c/a/c/h/e;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lb/i/c/a/b;->a(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move-object v4, v0

    .line 8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lc/c/a/b/f/a/c;->f:Landroid/content/Context;

    const-class v2, Lcom/farsitel/bazaar/ui/login/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "dealerPackageName"

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "loginType"

    .line 10
    sget-object v2, Lcom/farsitel/bazaar/common/model/login/LoginType;->IN_APP_PURCHASE:Lcom/farsitel/bazaar/common/model/login/LoginType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    iget-object v1, p0, Lc/c/a/b/f/a/c;->f:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 12
    sget-object v1, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 13
    sget-object v5, Lcom/farsitel/bazaar/app/notification/NotificationType;->IAB_LOGIN_NOTIFICATION:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "iab"

    .line 14
    new-instance v10, Lcom/farsitel/bazaar/app/notification/type/PardakhtNotificationManager$showLoginNotification$1;

    invoke-direct {v10, v0}, Lcom/farsitel/bazaar/app/notification/type/PardakhtNotificationManager$showLoginNotification$1;-><init>(Landroid/app/PendingIntent;)V

    const/16 v11, 0x30

    const/4 v12, 0x0

    move-object v2, p1

    .line 15
    invoke-static/range {v1 .. v12}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/util/List;JLjava/lang/String;Lh/f/a/a;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
