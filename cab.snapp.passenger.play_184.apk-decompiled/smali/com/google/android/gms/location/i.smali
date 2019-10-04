.class public Lcom/google/android/gms/location/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/i$a;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final FusedLocationApi:Lcom/google/android/gms/location/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GeofencingApi:Lcom/google/android/gms/location/d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SettingsApi:Lcom/google/android/gms/location/l;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final a:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/internal/hj;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b<",
            "Lcom/google/android/gms/internal/hj;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/i;->a:Lcom/google/android/gms/common/api/a$g;

    new-instance v0, Lcom/google/android/gms/location/ap;

    invoke-direct {v0}, Lcom/google/android/gms/location/ap;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/i;->b:Lcom/google/android/gms/common/api/a$b;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/location/i;->b:Lcom/google/android/gms/common/api/a$b;

    sget-object v2, Lcom/google/android/gms/location/i;->a:Lcom/google/android/gms/common/api/a$g;

    const-string v3, "LocationServices.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/location/i;->API:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/gb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gb;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/i;->FusedLocationApi:Lcom/google/android/gms/location/a;

    new-instance v0, Lcom/google/android/gms/internal/gp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gp;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/i;->GeofencingApi:Lcom/google/android/gms/location/d;

    new-instance v0, Lcom/google/android/gms/internal/hr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hr;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/i;->SettingsApi:Lcom/google/android/gms/location/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFusedLocationProviderClient(Landroid/app/Activity;)Lcom/google/android/gms/location/b;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/b;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/b;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getGeofencingClient(Landroid/app/Activity;)Lcom/google/android/gms/location/e;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/e;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getGeofencingClient(Landroid/content/Context;)Lcom/google/android/gms/location/e;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSettingsClient(Landroid/app/Activity;)Lcom/google/android/gms/location/m;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/m;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/m;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static zzh(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/internal/hj;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ap;->checkArgument(ZLjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/location/i;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/f;->zza(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/hj;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->zza(ZLjava/lang/Object;)V

    return-object p0
.end method
