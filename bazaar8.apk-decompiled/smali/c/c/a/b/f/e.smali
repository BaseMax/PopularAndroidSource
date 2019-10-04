.class public final synthetic Lc/c/a/b/f/e;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 9

    invoke-static {}, Lcom/farsitel/bazaar/app/notification/NotificationType;->values()[Lcom/farsitel/bazaar/app/notification/NotificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/b/f/e;->a:[I

    sget-object v0, Lc/c/a/b/f/e;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/f/e;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lc/c/a/b/f/e;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lc/c/a/b/f/e;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v0, Lc/c/a/b/f/e;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->UPGRADABLE_APPS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v0, Lc/c/a/b/f/e;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->MALICIOUS_APPS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    sget-object v0, Lc/c/a/b/f/e;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->IAB_LOGIN_NOTIFICATION:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v8, 0x7

    aput v8, v0, v1

    invoke-static {}, Lcom/farsitel/bazaar/app/notification/NotificationType;->values()[Lcom/farsitel/bazaar/app/notification/NotificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/b/f/e;->b:[I

    sget-object v0, Lc/c/a/b/f/e;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/f/e;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lc/c/a/b/f/e;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lc/c/a/b/f/e;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lc/c/a/b/f/e;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->UPGRADABLE_APPS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v0, Lc/c/a/b/f/e;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->MALICIOUS_APPS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v0, Lc/c/a/b/f/e;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/app/notification/NotificationType;->IAB_LOGIN_NOTIFICATION:Lcom/farsitel/bazaar/app/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1

    return-void
.end method
