.class public Lcom/webengage/sdk/android/ai;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "time_spent"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "city"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "country"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "region"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "postal_code"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "locality"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "opt_in_push"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "opt_in_inapp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "last_logged_in"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "first_logged_in"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "last_seen"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "first_session_start_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "session_count"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "campaign_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "campaign_source"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "campaign_medium"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "campaign_term"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "campaign_content"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "campaign_gclid"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "referrer"

    aput-object v2, v0, v1

    sput-object v0, Lcom/webengage/sdk/android/ai;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/webengage/sdk/android/ai;->a:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
