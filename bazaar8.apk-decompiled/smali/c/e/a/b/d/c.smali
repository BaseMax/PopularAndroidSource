.class public Lc/e/a/b/d/c;
.super Lc/e/a/b/d/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/d/c$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Lc/e/a/b/d/c;

.field public static final e:I


# instance fields
.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e/a/b/d/c;->c:Ljava/lang/Object;

    .line 2
    new-instance v0, Lc/e/a/b/d/c;

    invoke-direct {v0}, Lc/e/a/b/d/c;-><init>()V

    sput-object v0, Lc/e/a/b/d/c;->d:Lc/e/a/b/d/c;

    .line 3
    sget v0, Lc/e/a/b/d/d;->a:I

    sput v0, Lc/e/a/b/d/c;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/a/b/d/d;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 3

    .line 13
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 16
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x12

    .line 18
    invoke-static {p0, v0}, Lc/e/a/b/d/d/f;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, ""

    .line 20
    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 21
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "GooglePlayServicesUpdatingDialog"

    .line 22
    invoke-static {p0, v0, v1, p1}, Lc/e/a/b/d/c;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILc/e/a/b/d/d/g;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 38
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    :cond_2
    invoke-static {p0, p1}, Lc/e/a/b/d/d/f;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    .line 45
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    :cond_3
    invoke-static {p0, p1}, Lc/e/a/b/d/d/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 47
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    :cond_4
    invoke-static {p0, p1}, Lc/e/a/b/d/d/f;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 49
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    :cond_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lc/e/a/b/d/c;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/d/c;->d:Lc/e/a/b/d/c;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 51
    instance-of v0, p0, Lb/o/a/i;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lb/o/a/i;

    .line 53
    invoke-virtual {p0}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object p0

    .line 54
    invoke-static {p1, p3}, Lc/e/a/b/d/h;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lc/e/a/b/d/h;

    move-result-object p1

    .line 55
    invoke-virtual {p1, p0, p2}, Lc/e/a/b/d/h;->a(Lb/o/a/n;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 57
    invoke-static {p1, p3}, Lc/e/a/b/d/b;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lc/e/a/b/d/b;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p0, p2}, Lc/e/a/b/d/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)I
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lc/e/a/b/d/d;->a(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "d"

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lc/e/a/b/d/c;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-static {p1, v0, p3}, Lc/e/a/b/d/d/g;->a(Landroid/app/Activity;Landroid/content/Intent;I)Lc/e/a/b/d/d/g;

    move-result-object p3

    .line 4
    invoke-static {p1, p2, p3, p4}, Lc/e/a/b/d/c;->a(Landroid/content/Context;ILc/e/a/b/d/d/g;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3}, Lc/e/a/b/d/d;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;
    .locals 1

    .line 34
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->z()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->x()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc/e/a/b/d/c;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3}, Lc/e/a/b/d/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lc/e/a/b/d/a/a/A;)Lc/e/a/b/d/a/a/z;
    .locals 2

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 25
    new-instance v1, Lc/e/a/b/d/a/a/z;

    invoke-direct {v1, p2}, Lc/e/a/b/d/a/a/z;-><init>(Lc/e/a/b/d/a/a/A;)V

    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    invoke-virtual {v1, p1}, Lc/e/a/b/d/a/a/z;->a(Landroid/content/Context;)V

    const-string v0, "com.google.android.gms"

    .line 28
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/d/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 29
    invoke-virtual {p2}, Lc/e/a/b/d/a/a/A;->a()V

    .line 30
    invoke-virtual {v1}, Lc/e/a/b/d/a/a/z;->a()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final a(I)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lc/e/a/b/d/d;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    const/16 p3, 0x12

    if-ne p2, p3, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lc/e/a/b/d/c;->c(Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p4, :cond_2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 60
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 61
    :cond_2
    invoke-static {p1, p2}, Lc/e/a/b/d/d/f;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    .line 62
    invoke-static {p1, p2}, Lc/e/a/b/d/d/f;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "notification"

    .line 64
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 65
    new-instance v3, Lb/i/a/n$d;

    invoke-direct {v3, p1}, Lb/i/a/n$d;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 66
    invoke-virtual {v3, v4}, Lb/i/a/n$d;->b(Z)Lb/i/a/n$d;

    .line 67
    invoke-virtual {v3, v4}, Lb/i/a/n$d;->a(Z)Lb/i/a/n$d;

    .line 68
    invoke-virtual {v3, p3}, Lb/i/a/n$d;->c(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    new-instance p3, Lb/i/a/n$c;

    invoke-direct {p3}, Lb/i/a/n$c;-><init>()V

    .line 69
    invoke-virtual {p3, v0}, Lb/i/a/n$c;->a(Ljava/lang/CharSequence;)Lb/i/a/n$c;

    invoke-virtual {v3, p3}, Lb/i/a/n$d;->a(Lb/i/a/n$e;)Lb/i/a/n$d;

    .line 70
    invoke-static {p1}, Lc/e/a/b/d/g/i;->b(Landroid/content/Context;)Z

    move-result p3

    const/4 v5, 0x2

    if-eqz p3, :cond_4

    .line 71
    invoke-static {}, Lc/e/a/b/d/g/n;->f()Z

    move-result p3

    invoke-static {p3}, Lc/e/a/b/d/d/r;->b(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, p3}, Lb/i/a/n$d;->c(I)Lb/i/a/n$d;

    .line 73
    invoke-virtual {v3, v5}, Lb/i/a/n$d;->b(I)Lb/i/a/n$d;

    .line 74
    invoke-static {p1}, Lc/e/a/b/d/g/i;->c(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 75
    sget p3, Lc/e/a/b/c/a;->common_full_open_on_phone:I

    sget v0, Lc/e/a/b/c/b;->common_open_on_phone:I

    .line 76
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v3, p3, v0, p4}, Lb/i/a/n$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lb/i/a/n$d;

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v3, p4}, Lb/i/a/n$d;->a(Landroid/app/PendingIntent;)Lb/i/a/n$d;

    goto :goto_0

    :cond_4
    const p3, 0x108008a

    .line 79
    invoke-virtual {v3, p3}, Lb/i/a/n$d;->c(I)Lb/i/a/n$d;

    sget p3, Lc/e/a/b/c/b;->common_google_play_services_notification_ticker:I

    .line 80
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lb/i/a/n$d;->d(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lb/i/a/n$d;->a(J)Lb/i/a/n$d;

    .line 82
    invoke-virtual {v3, p4}, Lb/i/a/n$d;->a(Landroid/app/PendingIntent;)Lb/i/a/n$d;

    .line 83
    invoke-virtual {v3, v0}, Lb/i/a/n$d;->b(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    .line 84
    :goto_0
    invoke-static {}, Lc/e/a/b/d/g/n;->i()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 85
    invoke-static {}, Lc/e/a/b/d/g/n;->i()Z

    move-result p3

    invoke-static {p3}, Lc/e/a/b/d/d/r;->b(Z)V

    .line 86
    invoke-virtual {p0}, Lc/e/a/b/d/c;->b()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    const-string p3, "com.google.android.gms.availability"

    .line 87
    invoke-virtual {v2, p3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p4

    .line 88
    invoke-static {p1}, Lc/e/a/b/d/d/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p4, :cond_5

    .line 89
    new-instance p4, Landroid/app/NotificationChannel;

    const/4 v0, 0x4

    invoke-direct {p4, p3, p1, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, p4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1

    .line 90
    :cond_5
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 91
    invoke-virtual {p4, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v2, p4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 93
    :cond_6
    :goto_1
    invoke-virtual {v3, p3}, Lb/i/a/n$d;->a(Ljava/lang/String;)Lb/i/a/n$d;

    .line 94
    :cond_7
    invoke-virtual {v3}, Lb/i/a/n$d;->a()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v4, :cond_8

    if-eq p2, v5, :cond_8

    const/4 p3, 0x3

    if-eq p2, p3, :cond_8

    const p2, 0x9b6d

    goto :goto_2

    :cond_8
    const/16 p2, 0x28c4

    .line 95
    sget-object p3, Lc/e/a/b/d/e;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    :goto_2
    invoke-virtual {v2, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Lc/e/a/b/d/a/a/f;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1

    const-string p4, "d"

    .line 5
    invoke-virtual {p0, p1, p3, p4}, Lc/e/a/b/d/c;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const/4 v0, 0x2

    .line 6
    invoke-static {p2, p4, v0}, Lc/e/a/b/d/d/g;->a(Lc/e/a/b/d/a/a/f;Landroid/content/Intent;I)Lc/e/a/b/d/d/g;

    move-result-object p2

    .line 7
    invoke-static {p1, p3, p2, p5}, Lc/e/a/b/d/c;->a(Landroid/content/Context;ILc/e/a/b/d/d/g;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 8
    invoke-static {p1, p2, p3, p5}, Lc/e/a/b/d/c;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 2

    .line 9
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/d/c;->a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->x()I

    move-result p2

    const/4 v1, 0x0

    .line 11
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 12
    invoke-virtual {p0, p1, p2, v1, p3}, Lc/e/a/b/d/c;->a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;)I
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lc/e/a/b/d/d;->b(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 5
    sget-object v0, Lc/e/a/b/d/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/d/c;->f:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "n"

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lc/e/a/b/d/d;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v1, v0}, Lc/e/a/b/d/c;->a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final b(I)Z
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lc/e/a/b/d/d;->b(I)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lc/e/a/b/d/c;->a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 2
    invoke-static {p1, p2, p3, p4}, Lc/e/a/b/d/c;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lc/e/a/b/d/c$a;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/d/c$a;-><init>(Lc/e/a/b/d/c;Landroid/content/Context;)V

    const/4 p1, 0x1

    const-wide/32 v1, 0x1d4c0

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
