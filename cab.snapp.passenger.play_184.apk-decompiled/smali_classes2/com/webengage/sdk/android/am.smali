.class public final enum Lcom/webengage/sdk/android/am;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/am;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/webengage/sdk/android/am;

.field public static final enum B:Lcom/webengage/sdk/android/am;

.field public static final enum C:Lcom/webengage/sdk/android/am;

.field public static final enum D:Lcom/webengage/sdk/android/am;

.field public static final enum E:Lcom/webengage/sdk/android/am;

.field public static final enum F:Lcom/webengage/sdk/android/am;

.field public static final enum G:Lcom/webengage/sdk/android/am;

.field private static final synthetic I:[Lcom/webengage/sdk/android/am;

.field public static final enum a:Lcom/webengage/sdk/android/am;

.field public static final enum b:Lcom/webengage/sdk/android/am;

.field public static final enum c:Lcom/webengage/sdk/android/am;

.field public static final enum d:Lcom/webengage/sdk/android/am;

.field public static final enum e:Lcom/webengage/sdk/android/am;

.field public static final enum f:Lcom/webengage/sdk/android/am;

.field public static final enum g:Lcom/webengage/sdk/android/am;

.field public static final enum h:Lcom/webengage/sdk/android/am;

.field public static final enum i:Lcom/webengage/sdk/android/am;

.field public static final enum j:Lcom/webengage/sdk/android/am;

.field public static final enum k:Lcom/webengage/sdk/android/am;

.field public static final enum l:Lcom/webengage/sdk/android/am;

.field public static final enum m:Lcom/webengage/sdk/android/am;

.field public static final enum n:Lcom/webengage/sdk/android/am;

.field public static final enum o:Lcom/webengage/sdk/android/am;

.field public static final enum p:Lcom/webengage/sdk/android/am;

.field public static final enum q:Lcom/webengage/sdk/android/am;

.field public static final enum r:Lcom/webengage/sdk/android/am;

.field public static final enum s:Lcom/webengage/sdk/android/am;

.field public static final enum t:Lcom/webengage/sdk/android/am;

.field public static final enum u:Lcom/webengage/sdk/android/am;

.field public static final enum v:Lcom/webengage/sdk/android/am;

.field public static final enum w:Lcom/webengage/sdk/android/am;

.field public static final enum x:Lcom/webengage/sdk/android/am;

.field public static final enum y:Lcom/webengage/sdk/android/am;

.field public static final enum z:Lcom/webengage/sdk/android/am;


# instance fields
.field private H:Lcom/webengage/sdk/android/actions/database/o;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/4 v2, 0x0

    const-string v3, "FIRST_NAME"

    invoke-direct {v0, v3, v2, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->a:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/4 v3, 0x1

    const-string v4, "LAST_NAME"

    invoke-direct {v0, v4, v3, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->b:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/4 v4, 0x2

    const-string v5, "EMAIL"

    invoke-direct {v0, v5, v4, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->c:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/4 v5, 0x3

    const-string v6, "HASHED_EMAIL"

    invoke-direct {v0, v6, v5, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->d:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/4 v6, 0x4

    const-string v7, "BIRTH_DATE"

    invoke-direct {v0, v7, v6, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->e:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/4 v7, 0x5

    const-string v8, "GENDER"

    invoke-direct {v0, v8, v7, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->f:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/4 v8, 0x6

    const-string v9, "PHONE"

    invoke-direct {v0, v9, v8, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->g:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/4 v9, 0x7

    const-string v10, "HASHED_PHONE"

    invoke-direct {v0, v10, v9, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->h:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/16 v10, 0x8

    const-string v11, "COMPANY"

    invoke-direct {v0, v11, v10, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->i:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/16 v11, 0x9

    const-string v12, "TIME_SPENT"

    invoke-direct {v0, v12, v11, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->j:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/16 v12, 0xa

    const-string v13, "PUSH_OPT_IN"

    invoke-direct {v0, v13, v12, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->k:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/16 v13, 0xb

    const-string v14, "SMS_OPT_IN"

    invoke-direct {v0, v14, v13, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->l:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/16 v14, 0xc

    const-string v15, "EMAIL_OPT_IN"

    invoke-direct {v0, v15, v14, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->m:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/16 v15, 0xd

    const-string v14, "LATITUDE"

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->n:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const/16 v14, 0xe

    const-string v15, "LONGITUDE"

    invoke-direct {v0, v15, v14, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->o:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v15, "CITY"

    const/16 v14, 0xf

    invoke-direct {v0, v15, v14, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->p:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "COUNTRY"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->q:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "REGION"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->r:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "POSTAL_CODE"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->s:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "LOCALITY"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->t:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "LAST_LOGGED_IN"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->u:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "FIRST_LOGGED_IN"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->v:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "LAST_SEEN"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->w:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "CREATED_AT"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->x:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "REFERRER_TYPE"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->y:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "SESSION_COUNT"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->z:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "CAMPAIGN_ID"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->A:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "CAMPAIGN_SOURCE"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->B:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "CAMPAIGN_MEDIUM"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->C:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "CAMPAIGN_TERM"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->D:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "CAMPAIGN_CONTENT"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->E:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "CAMPAIGN_GCLID"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->F:Lcom/webengage/sdk/android/am;

    new-instance v0, Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v14, "REFERRER"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15, v1}, Lcom/webengage/sdk/android/am;-><init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V

    sput-object v0, Lcom/webengage/sdk/android/am;->G:Lcom/webengage/sdk/android/am;

    const/16 v0, 0x21

    new-array v0, v0, [Lcom/webengage/sdk/android/am;

    sget-object v1, Lcom/webengage/sdk/android/am;->a:Lcom/webengage/sdk/android/am;

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->b:Lcom/webengage/sdk/android/am;

    aput-object v1, v0, v3

    sget-object v1, Lcom/webengage/sdk/android/am;->c:Lcom/webengage/sdk/android/am;

    aput-object v1, v0, v4

    sget-object v1, Lcom/webengage/sdk/android/am;->d:Lcom/webengage/sdk/android/am;

    aput-object v1, v0, v5

    sget-object v1, Lcom/webengage/sdk/android/am;->e:Lcom/webengage/sdk/android/am;

    aput-object v1, v0, v6

    sget-object v1, Lcom/webengage/sdk/android/am;->f:Lcom/webengage/sdk/android/am;

    aput-object v1, v0, v7

    sget-object v1, Lcom/webengage/sdk/android/am;->g:Lcom/webengage/sdk/android/am;

    aput-object v1, v0, v8

    sget-object v1, Lcom/webengage/sdk/android/am;->h:Lcom/webengage/sdk/android/am;

    aput-object v1, v0, v9

    sget-object v1, Lcom/webengage/sdk/android/am;->i:Lcom/webengage/sdk/android/am;

    aput-object v1, v0, v10

    sget-object v1, Lcom/webengage/sdk/android/am;->j:Lcom/webengage/sdk/android/am;

    aput-object v1, v0, v11

    sget-object v1, Lcom/webengage/sdk/android/am;->k:Lcom/webengage/sdk/android/am;

    aput-object v1, v0, v12

    sget-object v1, Lcom/webengage/sdk/android/am;->l:Lcom/webengage/sdk/android/am;

    aput-object v1, v0, v13

    sget-object v1, Lcom/webengage/sdk/android/am;->m:Lcom/webengage/sdk/android/am;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->n:Lcom/webengage/sdk/android/am;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->o:Lcom/webengage/sdk/android/am;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->p:Lcom/webengage/sdk/android/am;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->q:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->r:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->s:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->t:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->u:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->v:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->w:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->x:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->y:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->z:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->A:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->B:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->C:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->D:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->E:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->F:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/am;->G:Lcom/webengage/sdk/android/am;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sput-object v0, Lcom/webengage/sdk/android/am;->I:[Lcom/webengage/sdk/android/am;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/webengage/sdk/android/actions/database/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/webengage/sdk/android/actions/database/o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/webengage/sdk/android/am;->H:Lcom/webengage/sdk/android/actions/database/o;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/webengage/sdk/android/am;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/webengage/sdk/android/am;->valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/am;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/am;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/am;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/am;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/am;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/am;->I:[Lcom/webengage/sdk/android/am;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/am;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/am;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/webengage/sdk/android/actions/database/o;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/am;->H:Lcom/webengage/sdk/android/actions/database/o;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/am;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
