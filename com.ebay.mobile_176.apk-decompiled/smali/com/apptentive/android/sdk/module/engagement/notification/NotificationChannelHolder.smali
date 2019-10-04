.class public Lcom/apptentive/android/sdk/module/engagement/notification/NotificationChannelHolder;
.super Ljava/lang/Object;
.source "NotificationChannelHolder.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation


# static fields
.field private static instance:Landroid/app/NotificationChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "com.apptentive.notification.channel.DEFAULT"

    const-string v2, "Apptentive Notifications"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "Channel description"

    .line 23
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v2, -0x10000

    .line 25
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 27
    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/notification/NotificationChannelHolder;->instance:Landroid/app/NotificationChannel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/app/NotificationChannel;
    .locals 1

    .line 31
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/notification/NotificationChannelHolder;->instance:Landroid/app/NotificationChannel;

    return-object v0
.end method
