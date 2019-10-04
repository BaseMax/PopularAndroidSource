.class public Lcom/webengage/sdk/android/p;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/webengage/sdk/android/o;

.field static b:Lcom/webengage/sdk/android/o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a()Lcom/webengage/sdk/android/o;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/p;->b:Lcom/webengage/sdk/android/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/s;

    invoke-direct {v0}, Lcom/webengage/sdk/android/s;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/p;->b:Lcom/webengage/sdk/android/o;

    :cond_0
    sget-object v0, Lcom/webengage/sdk/android/p;->b:Lcom/webengage/sdk/android/o;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/webengage/sdk/android/o;
    .locals 3

    invoke-static {}, Lcom/webengage/sdk/android/utils/h;->c()Z

    move-result v0

    const-string v1, "WebEngage"

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/webengage/sdk/android/utils/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v0}, Lcom/webengage/sdk/android/utils/e;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_1

    const-string p0, "Location Tracking is enabled but AndroidManifest is missing required permission : android.permission.ACCESS_FINE_LOCATION"

    goto :goto_0

    :cond_1
    const-string p0, "Location Tracking is enabled but location permission is not granted to application"

    :goto_0
    invoke-static {v1, p0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/webengage/sdk/android/p;->a()Lcom/webengage/sdk/android/o;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lcom/webengage/sdk/android/p;->a:Lcom/webengage/sdk/android/o;

    if-nez v0, :cond_3

    new-instance v0, Lcom/webengage/sdk/android/q;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/webengage/sdk/android/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/webengage/sdk/android/p;->a:Lcom/webengage/sdk/android/o;

    :cond_3
    sget-object p0, Lcom/webengage/sdk/android/p;->a:Lcom/webengage/sdk/android/o;

    return-object p0

    :cond_4
    :goto_1
    const-string p0, "Unable to initialize location module"

    invoke-static {v1, p0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/webengage/sdk/android/p;->a()Lcom/webengage/sdk/android/o;

    move-result-object p0

    return-object p0
.end method
