.class public final enum Lcom/farsitel/bazaar/app/notification/NotificationType;
.super Ljava/lang/Enum;
.source "NotificationType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/app/notification/NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

.field public static final enum APP_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

.field public static final enum IAB_LOGIN_NOTIFICATION:Lcom/farsitel/bazaar/app/notification/NotificationType;

.field public static final enum MALICIOUS_APPS:Lcom/farsitel/bazaar/app/notification/NotificationType;

.field public static final enum PUSH_NOTIFICATION:Lcom/farsitel/bazaar/app/notification/NotificationType;

.field public static final enum UPDATE_NEEDED:Lcom/farsitel/bazaar/app/notification/NotificationType;

.field public static final enum UPGRADABLE_APPS:Lcom/farsitel/bazaar/app/notification/NotificationType;

.field public static final enum VIDEO_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

.field public static final enum VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/app/notification/NotificationType;


# instance fields
.field public final notificationId:I

.field public final resourceBodyIdOne:Ljava/lang/Integer;

.field public final resourceBodyIdOther:Ljava/lang/Integer;

.field public final resourceTitleIdOne:I

.field public final resourceTitleIdOther:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/farsitel/bazaar/app/notification/NotificationType;

    new-instance v9, Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 1
    invoke-static {}, Lc/c/a/b/f/i;->a()I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    invoke-static {v1}, Lc/c/a/b/f/i;->a(I)V

    const v1, 0x7f100135

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const v1, 0x7f100136

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v2, "APP_DOWNLOAD_COMPLETE"

    const/4 v3, 0x0

    const v5, 0x7f100137

    const v6, 0x7f100138

    move-object v1, v9

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    .line 4
    invoke-direct/range {v1 .. v8}, Lcom/farsitel/bazaar/app/notification/NotificationType;-><init>(Ljava/lang/String;IIIILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v9, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    new-instance v1, Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 5
    invoke-static {}, Lc/c/a/b/f/i;->a()I

    move-result v21

    add-int/lit8 v2, v21, 0x1

    invoke-static {v2}, Lc/c/a/b/f/i;->a(I)V

    const-string v19, "APP_DOWNLOAD_PROGRESS"

    const/16 v20, 0x1

    const v22, 0x7f100139

    const v23, 0x7f10013a

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v1

    .line 6
    invoke-direct/range {v18 .. v25}, Lcom/farsitel/bazaar/app/notification/NotificationType;-><init>(Ljava/lang/String;IIIILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 7
    invoke-static {}, Lc/c/a/b/f/i;->a()I

    move-result v13

    add-int/lit8 v2, v13, 0x1

    invoke-static {v2}, Lc/c/a/b/f/i;->a(I)V

    const-string v11, "UPDATE_NEEDED"

    const/4 v12, 0x2

    const v14, 0x7f100137

    const v15, 0x7f100138

    move-object v10, v1

    .line 8
    invoke-direct/range {v10 .. v17}, Lcom/farsitel/bazaar/app/notification/NotificationType;-><init>(Ljava/lang/String;IIIILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->UPDATE_NEEDED:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 9
    invoke-static {}, Lc/c/a/b/f/i;->a()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    invoke-static {v2}, Lc/c/a/b/f/i;->a(I)V

    const-string v4, "VIDEO_DOWNLOAD_PROGRESS"

    const/4 v5, 0x3

    const v7, 0x7f100139

    const v8, 0x7f10013a

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    .line 10
    invoke-direct/range {v3 .. v10}, Lcom/farsitel/bazaar/app/notification/NotificationType;-><init>(Ljava/lang/String;IIIILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 11
    invoke-static {}, Lc/c/a/b/f/i;->a()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    invoke-static {v2}, Lc/c/a/b/f/i;->a(I)V

    const v2, 0x7f10013f

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v2, 0x7f100140

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v4, "VIDEO_DOWNLOAD_COMPLETE"

    const/4 v5, 0x4

    const v7, 0x7f100141

    const v8, 0x7f100142

    move-object v3, v1

    .line 14
    invoke-direct/range {v3 .. v10}, Lcom/farsitel/bazaar/app/notification/NotificationType;-><init>(Ljava/lang/String;IIIILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 15
    invoke-static {}, Lc/c/a/b/f/i;->a()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    invoke-static {v2}, Lc/c/a/b/f/i;->a(I)V

    const-string v4, "PUSH_NOTIFICATION"

    const/4 v5, 0x5

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    .line 16
    invoke-direct/range {v3 .. v10}, Lcom/farsitel/bazaar/app/notification/NotificationType;-><init>(Ljava/lang/String;IIIILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->PUSH_NOTIFICATION:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 17
    invoke-static {}, Lc/c/a/b/f/i;->a()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    invoke-static {v2}, Lc/c/a/b/f/i;->a(I)V

    const v2, 0x7f10013b

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v2, 0x7f10013c

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v4, "UPGRADABLE_APPS"

    const/4 v5, 0x6

    const v7, 0x7f10013d

    const v8, 0x7f10013e

    move-object v3, v1

    .line 20
    invoke-direct/range {v3 .. v10}, Lcom/farsitel/bazaar/app/notification/NotificationType;-><init>(Ljava/lang/String;IIIILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->UPGRADABLE_APPS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 21
    invoke-static {}, Lc/c/a/b/f/i;->a()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    invoke-static {v2}, Lc/c/a/b/f/i;->a(I)V

    const v2, 0x7f100116

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v2, 0x7f100117

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v4, "MALICIOUS_APPS"

    const/4 v5, 0x7

    const v7, 0x7f100118

    const v8, 0x7f100119

    move-object v3, v1

    .line 24
    invoke-direct/range {v3 .. v10}, Lcom/farsitel/bazaar/app/notification/NotificationType;-><init>(Ljava/lang/String;IIIILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->MALICIOUS_APPS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 25
    invoke-static {}, Lc/c/a/b/f/i;->a()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    invoke-static {v2}, Lc/c/a/b/f/i;->a(I)V

    const-string v4, "IAB_LOGIN_NOTIFICATION"

    const/16 v5, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1e

    const/4 v12, 0x0

    move-object v3, v1

    .line 26
    invoke-direct/range {v3 .. v12}, Lcom/farsitel/bazaar/app/notification/NotificationType;-><init>(Ljava/lang/String;IIIILjava/lang/Integer;Ljava/lang/Integer;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->IAB_LOGIN_NOTIFICATION:Lcom/farsitel/bazaar/app/notification/NotificationType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/app/notification/NotificationType;->a:[Lcom/farsitel/bazaar/app/notification/NotificationType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/farsitel/bazaar/app/notification/NotificationType;->notificationId:I

    iput p4, p0, Lcom/farsitel/bazaar/app/notification/NotificationType;->resourceTitleIdOne:I

    iput p5, p0, Lcom/farsitel/bazaar/app/notification/NotificationType;->resourceTitleIdOther:I

    iput-object p6, p0, Lcom/farsitel/bazaar/app/notification/NotificationType;->resourceBodyIdOne:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/farsitel/bazaar/app/notification/NotificationType;->resourceBodyIdOther:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIILjava/lang/Integer;Ljava/lang/Integer;ILh/f/b/f;)V
    .locals 10

    and-int/lit8 v0, p8, 0x2

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    const/4 v7, -0x1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_3

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 2
    invoke-direct/range {v2 .. v9}, Lcom/farsitel/bazaar/app/notification/NotificationType;-><init>(Ljava/lang/String;IIIILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/app/notification/NotificationType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/app/notification/NotificationType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/app/notification/NotificationType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/app/notification/NotificationType;->a:[Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/app/notification/NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/app/notification/NotificationType;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/farsitel/bazaar/app/notification/NotificationType;->resourceBodyIdOne:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/farsitel/bazaar/app/notification/NotificationType;->resourceBodyIdOther:Ljava/lang/Integer;

    :goto_0
    return-object p1
.end method

.method public final b(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lcom/farsitel/bazaar/app/notification/NotificationType;->resourceTitleIdOne:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/farsitel/bazaar/app/notification/NotificationType;->resourceTitleIdOther:I

    :goto_0
    return p1
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/app/notification/NotificationType;->notificationId:I

    return v0
.end method
