.class public final enum Lcom/webengage/sdk/android/af;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/af;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/webengage/sdk/android/af;

.field public static final enum b:Lcom/webengage/sdk/android/af;

.field public static final enum c:Lcom/webengage/sdk/android/af;

.field public static final enum d:Lcom/webengage/sdk/android/af;

.field public static final enum e:Lcom/webengage/sdk/android/af;

.field public static final enum f:Lcom/webengage/sdk/android/af;

.field public static final enum g:Lcom/webengage/sdk/android/af;

.field public static final enum h:Lcom/webengage/sdk/android/af;

.field public static final enum i:Lcom/webengage/sdk/android/af;

.field public static final enum j:Lcom/webengage/sdk/android/af;

.field public static final enum k:Lcom/webengage/sdk/android/af;

.field public static final enum l:Lcom/webengage/sdk/android/af;

.field public static final enum m:Lcom/webengage/sdk/android/af;

.field public static final enum n:Lcom/webengage/sdk/android/af;

.field public static final enum o:Lcom/webengage/sdk/android/af;

.field private static final synthetic q:[Lcom/webengage/sdk/android/af;


# instance fields
.field p:[Lcom/webengage/sdk/android/ab$a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/webengage/sdk/android/af;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/webengage/sdk/android/ab$a;

    sget-object v3, Lcom/webengage/sdk/android/actions/database/b;->a:Lcom/webengage/sdk/android/ab$a;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/webengage/sdk/android/actions/rules/b;->a:Lcom/webengage/sdk/android/ab$a;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/webengage/sdk/android/actions/b/b;->b:Lcom/webengage/sdk/android/ab$a;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "BOOT_UP"

    invoke-direct {v0, v3, v4, v2}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->a:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    const/4 v2, 0x5

    new-array v3, v2, [Lcom/webengage/sdk/android/ab$a;

    sget-object v7, Lcom/webengage/sdk/android/actions/render/n;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v7, v3, v4

    sget-object v7, Lcom/webengage/sdk/android/actions/database/g;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v7, v3, v5

    sget-object v7, Lcom/webengage/sdk/android/actions/rules/g;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v7, v3, v6

    sget-object v7, Lcom/webengage/sdk/android/actions/b/b;->b:Lcom/webengage/sdk/android/ab$a;

    aput-object v7, v3, v1

    sget-object v7, Lcom/webengage/sdk/android/actions/database/q;->b:Lcom/webengage/sdk/android/ab$a;

    const/4 v8, 0x4

    aput-object v7, v3, v8

    const-string v7, "EVENT"

    invoke-direct {v0, v7, v5, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v6, [Lcom/webengage/sdk/android/ab$a;

    sget-object v7, Lcom/webengage/sdk/android/actions/database/g;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v7, v3, v4

    sget-object v7, Lcom/webengage/sdk/android/actions/render/n;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v7, v3, v5

    const-string v7, "GCM_MESSAGE"

    invoke-direct {v0, v7, v6, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->c:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v5, [Lcom/webengage/sdk/android/ab$a;

    sget-object v7, Lcom/webengage/sdk/android/actions/rules/b;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v7, v3, v4

    const-string v7, "CONFIG_REFRESH"

    invoke-direct {v0, v7, v1, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->d:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v5, [Lcom/webengage/sdk/android/ab$a;

    sget-object v7, Lcom/webengage/sdk/android/actions/database/v;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v7, v3, v4

    const-string v7, "SYNC_TO_SERVER"

    invoke-direct {v0, v7, v8, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->e:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v5, [Lcom/webengage/sdk/android/ab$a;

    sget-object v7, Lcom/webengage/sdk/android/actions/a/b;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v7, v3, v4

    const-string v7, "DEEPLINK"

    invoke-direct {v0, v7, v2, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->f:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v5, [Lcom/webengage/sdk/android/ab$a;

    sget-object v7, Lcom/webengage/sdk/android/actions/exception/b;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v7, v3, v4

    const/4 v7, 0x6

    const-string v9, "EXCEPTION"

    invoke-direct {v0, v9, v7, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v1, [Lcom/webengage/sdk/android/ab$a;

    sget-object v9, Lcom/webengage/sdk/android/actions/render/n;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v9, v3, v4

    sget-object v9, Lcom/webengage/sdk/android/actions/database/g;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v9, v3, v5

    sget-object v9, Lcom/webengage/sdk/android/actions/rules/g;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v9, v3, v6

    const/4 v9, 0x7

    const-string v10, "INTERNAL_EVENT"

    invoke-direct {v0, v10, v9, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->h:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v5, [Lcom/webengage/sdk/android/ab$a;

    sget-object v10, Lcom/webengage/sdk/android/actions/database/g;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v10, v3, v4

    const/16 v10, 0x8

    const-string v11, "DATA"

    invoke-direct {v0, v11, v10, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->i:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v5, [Lcom/webengage/sdk/android/ab$a;

    sget-object v11, Lcom/webengage/sdk/android/actions/render/n;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v11, v3, v4

    const/16 v11, 0x9

    const-string v12, "RENDER"

    invoke-direct {v0, v12, v11, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->j:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v5, [Lcom/webengage/sdk/android/ab$a;

    sget-object v12, Lcom/webengage/sdk/android/actions/rules/g;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v12, v3, v4

    const/16 v12, 0xa

    const-string v13, "RULE_EXECUTION"

    invoke-direct {v0, v13, v12, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->k:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v5, [Lcom/webengage/sdk/android/ab$a;

    sget-object v13, Lcom/webengage/sdk/android/actions/database/aa;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v13, v3, v4

    const/16 v13, 0xb

    const-string v14, "FETCH_PROFILE"

    invoke-direct {v0, v14, v13, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->l:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v5, [Lcom/webengage/sdk/android/ab$a;

    sget-object v14, Lcom/webengage/sdk/android/actions/database/l;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v14, v3, v4

    const/16 v14, 0xc

    const-string v15, "JOURNEY_CONTEXT"

    invoke-direct {v0, v15, v14, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->m:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v5, [Lcom/webengage/sdk/android/ab$a;

    sget-object v15, Lcom/webengage/sdk/android/actions/database/q;->b:Lcom/webengage/sdk/android/ab$a;

    aput-object v15, v3, v4

    const/16 v15, 0xd

    const-string v14, "REPORT"

    invoke-direct {v0, v14, v15, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->n:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/af;

    new-array v3, v5, [Lcom/webengage/sdk/android/ab$a;

    sget-object v14, Lcom/webengage/sdk/android/b;->a:Lcom/webengage/sdk/android/ab$a;

    aput-object v14, v3, v4

    const/16 v14, 0xe

    const-string v15, "AMPLIFY"

    invoke-direct {v0, v15, v14, v3}, Lcom/webengage/sdk/android/af;-><init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V

    sput-object v0, Lcom/webengage/sdk/android/af;->o:Lcom/webengage/sdk/android/af;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/webengage/sdk/android/af;

    sget-object v3, Lcom/webengage/sdk/android/af;->a:Lcom/webengage/sdk/android/af;

    aput-object v3, v0, v4

    sget-object v3, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    aput-object v3, v0, v5

    sget-object v3, Lcom/webengage/sdk/android/af;->c:Lcom/webengage/sdk/android/af;

    aput-object v3, v0, v6

    sget-object v3, Lcom/webengage/sdk/android/af;->d:Lcom/webengage/sdk/android/af;

    aput-object v3, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/af;->e:Lcom/webengage/sdk/android/af;

    aput-object v1, v0, v8

    sget-object v1, Lcom/webengage/sdk/android/af;->f:Lcom/webengage/sdk/android/af;

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    aput-object v1, v0, v7

    sget-object v1, Lcom/webengage/sdk/android/af;->h:Lcom/webengage/sdk/android/af;

    aput-object v1, v0, v9

    sget-object v1, Lcom/webengage/sdk/android/af;->i:Lcom/webengage/sdk/android/af;

    aput-object v1, v0, v10

    sget-object v1, Lcom/webengage/sdk/android/af;->j:Lcom/webengage/sdk/android/af;

    aput-object v1, v0, v11

    sget-object v1, Lcom/webengage/sdk/android/af;->k:Lcom/webengage/sdk/android/af;

    aput-object v1, v0, v12

    sget-object v1, Lcom/webengage/sdk/android/af;->l:Lcom/webengage/sdk/android/af;

    aput-object v1, v0, v13

    sget-object v1, Lcom/webengage/sdk/android/af;->m:Lcom/webengage/sdk/android/af;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/af;->n:Lcom/webengage/sdk/android/af;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/af;->o:Lcom/webengage/sdk/android/af;

    aput-object v1, v0, v14

    sput-object v0, Lcom/webengage/sdk/android/af;->q:[Lcom/webengage/sdk/android/af;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Lcom/webengage/sdk/android/ab$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/webengage/sdk/android/ab$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/webengage/sdk/android/af;->p:[Lcom/webengage/sdk/android/ab$a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/af;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/af;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/af;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/af;->q:[Lcom/webengage/sdk/android/af;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/af;

    return-object v0
.end method


# virtual methods
.method protected final a()[Lcom/webengage/sdk/android/ab$a;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/af;->p:[Lcom/webengage/sdk/android/ab$a;

    return-object v0
.end method
