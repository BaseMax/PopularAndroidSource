.class public final enum Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;
.super Ljava/lang/Enum;
.source "EventPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/model/EventPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventLabel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

.field public static final enum app__exit:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

.field public static final enum app__launch:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

.field public static final enum error:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;


# instance fields
.field private final labelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 165
    new-instance v0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    const-string v1, "app__launch"

    const-string v2, "launch"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->app__launch:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    .line 166
    new-instance v0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    const-string v1, "app__exit"

    const-string v2, "exit"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->app__exit:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    .line 167
    new-instance v0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    const-string v1, "error"

    const-string v2, "error"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->error:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    const/4 v0, 0x3

    .line 163
    new-array v0, v0, [Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    sget-object v1, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->app__launch:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->app__exit:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->error:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->$VALUES:[Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 172
    iput-object p3, p0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->labelName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;
    .locals 1

    .line 163
    const-class v0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;
    .locals 1

    .line 163
    sget-object v0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->$VALUES:[Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    return-object v0
.end method


# virtual methods
.method public getLabelName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;->labelName:Ljava/lang/String;

    return-object v0
.end method
