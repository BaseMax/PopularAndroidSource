.class public Lc/e/a/b/h/b/Aa;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0xc

    .line 1
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "firebase_last_notification"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "first_open_time"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "first_visit_time"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "last_deep_link_referrer"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "user_id"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "first_open_after_install"

    aput-object v8, v1, v7

    const/4 v8, 0x6

    const-string v9, "lifetime_user_engagement"

    aput-object v9, v1, v8

    const/4 v9, 0x7

    const-string v10, "non_personalized_ads"

    aput-object v10, v1, v9

    const/16 v10, 0x8

    const-string v11, "session_number"

    aput-object v11, v1, v10

    const/16 v11, 0x9

    const-string v12, "ga_session_number"

    aput-object v12, v1, v11

    const/16 v12, 0xa

    const-string v13, "session_id"

    aput-object v13, v1, v12

    const/16 v13, 0xb

    const-string v14, "ga_session_id"

    aput-object v14, v1, v13

    sput-object v1, Lc/e/a/b/h/b/Aa;->a:[Ljava/lang/String;

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ln"

    aput-object v1, v0, v2

    const-string v1, "_fot"

    aput-object v1, v0, v3

    const-string v1, "_fvt"

    aput-object v1, v0, v4

    const-string v1, "_ldl"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_fi"

    aput-object v1, v0, v7

    const-string v1, "_lte"

    aput-object v1, v0, v8

    const-string v1, "_npa"

    aput-object v1, v0, v9

    const-string v1, "_sno"

    aput-object v1, v0, v10

    aput-object v1, v0, v11

    const-string v1, "_sid"

    aput-object v1, v0, v12

    aput-object v1, v0, v13

    sput-object v0, Lc/e/a/b/h/b/Aa;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/b/h/b/Aa;->a:[Ljava/lang/String;

    sget-object v1, Lc/e/a/b/h/b/Aa;->b:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lc/e/a/b/h/b/bb;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
