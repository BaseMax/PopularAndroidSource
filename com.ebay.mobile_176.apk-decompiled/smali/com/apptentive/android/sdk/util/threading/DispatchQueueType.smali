.class public final enum Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;
.super Ljava/lang/Enum;
.source "DispatchQueueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

.field public static final enum Concurrent:Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

.field public static final enum Serial:Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    const-string v1, "Serial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;->Serial:Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    .line 20
    new-instance v0, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    const-string v1, "Concurrent"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;->Concurrent:Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    sget-object v1, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;->Serial:Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;->Concurrent:Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;->$VALUES:[Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;
    .locals 1

    .line 12
    const-class v0, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;
    .locals 1

    .line 12
    sget-object v0, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;->$VALUES:[Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    return-object v0
.end method
