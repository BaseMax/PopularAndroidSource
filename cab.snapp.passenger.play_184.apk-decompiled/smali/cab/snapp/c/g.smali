.class public final Lcab/snapp/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/c/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationPermissionStringArray()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static varargs getPermission(Landroid/app/Activity;[Ljava/lang/String;Lcab/snapp/c/g$a;[Ljava/lang/String;)V
    .locals 2

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 59
    invoke-interface {p2}, Lcab/snapp/c/g$a;->onPermissionGranted()V

    :cond_0
    return-void

    :cond_1
    if-nez p0, :cond_3

    if-eqz p2, :cond_2

    .line 69
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-interface {p2, p0}, Lcab/snapp/c/g$a;->onPermissionDenied(Ljava/util/ArrayList;)V

    :cond_2
    return-void

    .line 76
    :cond_3
    array-length v0, p3

    if-lez v0, :cond_4

    const/4 v0, 0x0

    aget-object v1, p3, v0

    if-eqz v1, :cond_4

    aget-object p3, p3, v0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 81
    :cond_4
    invoke-static {p0}, Lcom/karumi/dexter/Dexter;->withActivity(Landroid/app/Activity;)Lcom/karumi/dexter/DexterBuilder$Permission;

    move-result-object p0

    .line 82
    invoke-interface {p0, p1}, Lcom/karumi/dexter/DexterBuilder$Permission;->withPermissions([Ljava/lang/String;)Lcom/karumi/dexter/DexterBuilder$MultiPermissionListener;

    move-result-object p0

    new-instance p1, Lcab/snapp/c/g$1;

    invoke-direct {p1, p2}, Lcab/snapp/c/g$1;-><init>(Lcab/snapp/c/g$a;)V

    .line 83
    invoke-interface {p0, p1}, Lcom/karumi/dexter/DexterBuilder$MultiPermissionListener;->withListener(Lcom/karumi/dexter/listener/multi/MultiplePermissionsListener;)Lcom/karumi/dexter/DexterBuilder;

    move-result-object p0

    .line 114
    invoke-interface {p0}, Lcom/karumi/dexter/DexterBuilder;->check()V

    return-void
.end method

.method public static isLocationPermissionGranted(Landroid/content/Context;)Z
    .locals 3

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 131
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 132
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 154
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    return v1
.end method
