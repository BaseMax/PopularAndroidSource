.class Landroidx/media/MediaSessionManagerImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media/MediaSessionManager$MediaSessionManagerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final PERMISSION_MEDIA_CONTENT_CONTROL:Ljava/lang/String; = "android.permission.MEDIA_CONTENT_CONTROL"

.field private static final PERMISSION_STATUS_BAR_SERVICE:Ljava/lang/String; = "android.permission.STATUS_BAR_SERVICE"

.field private static final TAG:Ljava/lang/String; = "MediaSessionManager"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-boolean v0, Landroidx/media/MediaSessionManager;->DEBUG:Z

    sput-boolean v0, Landroidx/media/MediaSessionManagerImplBase;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/media/MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    .line 47
    iget-object p1, p0, Landroidx/media/MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Landroidx/media/MediaSessionManagerImplBase;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private isPermissionGranted(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;Ljava/lang/String;)Z
    .locals 4

    .line 84
    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 86
    iget-object v0, p0, Landroidx/media/MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 87
    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 89
    :cond_1
    iget-object v0, p0, Landroidx/media/MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v3

    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result p1

    invoke-virtual {v0, p2, v3, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/media/MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method isEnabledNotificationListener(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 5

    .line 103
    iget-object v0, p0, Landroidx/media/MediaSessionManagerImplBase;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, ":"

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 107
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 108
    aget-object v3, v0, v2

    .line 109
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 3

    const/4 v0, 0x0

    .line 60
    :try_start_0
    iget-object v1, p0, Landroidx/media/MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 61
    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 70
    sget-boolean v1, Landroidx/media/MediaSessionManagerImplBase;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t match with the uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    return v0

    :cond_1
    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    .line 76
    invoke-direct {p0, p1, v1}, Landroidx/media/MediaSessionManagerImplBase;->isPermissionGranted(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 77
    invoke-direct {p0, p1, v1}, Landroidx/media/MediaSessionManagerImplBase;->isPermissionGranted(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 78
    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_3

    .line 79
    invoke-virtual {p0, p1}, Landroidx/media/MediaSessionManagerImplBase;->isEnabledNotificationListener(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    nop

    .line 63
    sget-boolean v1, Landroidx/media/MediaSessionManagerImplBase;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    return v0
.end method
