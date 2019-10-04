.class public final synthetic Lc/c/a/b/c/a;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;->values()[Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/b/c/a;->a:[I

    sget-object v0, Lc/c/a/b/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;->ACTIVITY:Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    return-void
.end method
