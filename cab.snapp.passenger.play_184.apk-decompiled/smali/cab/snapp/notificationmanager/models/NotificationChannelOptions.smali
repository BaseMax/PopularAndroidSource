.class public final Lcab/snapp/notificationmanager/models/NotificationChannelOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZILcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean p1, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->a:Z

    .line 57
    iput-boolean p2, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->b:Z

    .line 58
    iput-boolean p3, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->c:Z

    .line 59
    iput p4, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->d:I

    .line 60
    iput-object p5, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->e:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    .line 61
    iput-object p6, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getLightColor()I
    .locals 1

    .line 100
    iget v0, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->d:I

    return v0
.end method

.method public final getLockScreenVisibility()Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;
    .locals 1

    .line 110
    iget-object v0, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->e:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    return-object v0
.end method

.method public final isEnableLights()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->a:Z

    return v0
.end method

.method public final isEnableVibration()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->b:Z

    return v0
.end method

.method public final isShowBadge()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->c:Z

    return v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->f:Ljava/lang/String;

    return-void
.end method

.method public final setEnableLights(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->a:Z

    return-void
.end method

.method public final setEnableVibration(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->b:Z

    return-void
.end method

.method public final setLightColor(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->d:I

    return-void
.end method

.method public final setLockScreenVisibility(Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->e:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    return-void
.end method

.method public final setShowBadge(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->c:Z

    return-void
.end method
