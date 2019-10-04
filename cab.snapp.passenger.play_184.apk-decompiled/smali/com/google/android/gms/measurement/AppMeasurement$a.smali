.class public final Lcom/google/android/gms/measurement/AppMeasurement$a;
.super Lcom/google/firebase/analytics/FirebaseAnalytics$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/AppMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final APP_EXCEPTION:Ljava/lang/String; = "_ae"

.field public static final zziwg:[Ljava/lang/String;

.field public static final zziwh:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x1a

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "app_clear_data"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "app_exception"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "app_remove"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "app_upgrade"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "app_install"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "app_update"

    aput-object v8, v1, v7

    const/4 v8, 0x6

    const-string v9, "firebase_campaign"

    aput-object v9, v1, v8

    const/4 v9, 0x7

    const-string v10, "error"

    aput-object v10, v1, v9

    const/16 v10, 0x8

    const-string v11, "first_open"

    aput-object v11, v1, v10

    const/16 v11, 0x9

    const-string v12, "first_visit"

    aput-object v12, v1, v11

    const/16 v12, 0xa

    const-string v13, "in_app_purchase"

    aput-object v13, v1, v12

    const/16 v13, 0xb

    const-string v14, "notification_dismiss"

    aput-object v14, v1, v13

    const/16 v14, 0xc

    const-string v15, "notification_foreground"

    aput-object v15, v1, v14

    const/16 v15, 0xd

    const-string v16, "notification_open"

    aput-object v16, v1, v15

    const/16 v16, 0xe

    const-string v17, "notification_receive"

    aput-object v17, v1, v16

    const/16 v16, 0xf

    const-string v17, "os_update"

    aput-object v17, v1, v16

    const/16 v16, 0x10

    const-string v17, "session_start"

    aput-object v17, v1, v16

    const/16 v16, 0x11

    const-string v17, "user_engagement"

    aput-object v17, v1, v16

    const/16 v16, 0x12

    const-string v17, "ad_exposure"

    aput-object v17, v1, v16

    const/16 v16, 0x13

    const-string v17, "adunit_exposure"

    aput-object v17, v1, v16

    const/16 v16, 0x14

    const-string v17, "ad_query"

    aput-object v17, v1, v16

    const/16 v16, 0x15

    const-string v17, "ad_activeview"

    aput-object v17, v1, v16

    const/16 v16, 0x16

    const-string v17, "ad_impression"

    aput-object v17, v1, v16

    const/16 v16, 0x17

    const-string v17, "ad_click"

    aput-object v17, v1, v16

    const/16 v16, 0x18

    const-string v17, "screen_view"

    aput-object v17, v1, v16

    const/16 v16, 0x19

    const-string v17, "firebase_extra_parameter"

    aput-object v17, v1, v16

    sput-object v1, Lcom/google/android/gms/measurement/AppMeasurement$a;->zziwg:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_cd"

    aput-object v1, v0, v2

    const-string v1, "_ae"

    aput-object v1, v0, v3

    const-string v1, "_ui"

    aput-object v1, v0, v4

    const-string v1, "_ug"

    aput-object v1, v0, v5

    const-string v1, "_in"

    aput-object v1, v0, v6

    const-string v1, "_au"

    aput-object v1, v0, v7

    const-string v1, "_cmp"

    aput-object v1, v0, v8

    const-string v1, "_err"

    aput-object v1, v0, v9

    const-string v1, "_f"

    aput-object v1, v0, v10

    const-string v1, "_v"

    aput-object v1, v0, v11

    const-string v1, "_iap"

    aput-object v1, v0, v12

    const-string v1, "_nd"

    aput-object v1, v0, v13

    const-string v1, "_nf"

    aput-object v1, v0, v14

    const-string v1, "_no"

    aput-object v1, v0, v15

    const/16 v1, 0xe

    const-string v2, "_nr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_ou"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "_s"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_e"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "_xa"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_xu"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "_aq"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "_aa"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "_ai"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "_ac"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "_vs"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "_ep"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/AppMeasurement$a;->zziwh:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics$a;-><init>()V

    return-void
.end method

.method public static zziq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$a;->zziwg:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$a;->zziwh:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/na;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
