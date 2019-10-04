.class final enum Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;
.super Ljava/lang/Enum;
.source "ApptentiveInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/ApptentiveInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PushAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

.field public static final enum pmc:Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

.field public static final enum unknown:Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 125
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    const-string v1, "pmc"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->pmc:Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    .line 126
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    const-string/jumbo v1, "unknown"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->unknown:Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    const/4 v0, 0x2

    .line 124
    new-array v0, v0, [Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->pmc:Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->unknown:Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->$VALUES:[Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;
    .locals 5

    .line 130
    :try_start_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 132
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "This version of the SDK can\'t handle push action \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->access$000(Ljava/lang/Exception;)V

    .line 135
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->unknown:Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;
    .locals 1

    .line 124
    const-class v0, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;
    .locals 1

    .line 124
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->$VALUES:[Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    return-object v0
.end method
