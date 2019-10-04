.class public final enum Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;
.super Ljava/lang/Enum;
.source "FCMMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/app/fcm/FCMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVITY:Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    new-instance v1, Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    const/4 v2, 0x0

    const-string v3, "ACTIVITY"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;->ACTIVITY:Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;->a:[Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;->a:[Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    return-object v0
.end method
