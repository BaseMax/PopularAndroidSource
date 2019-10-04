.class public final enum Lcom/apptentive/android/sdk/ApptentiveViewExitType;
.super Ljava/lang/Enum;
.source "ApptentiveViewExitType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/ApptentiveViewExitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/ApptentiveViewExitType;

.field public static final enum BACK_BUTTON:Lcom/apptentive/android/sdk/ApptentiveViewExitType;

.field public static final enum MENU_ITEM:Lcom/apptentive/android/sdk/ApptentiveViewExitType;

.field public static final enum NOTIFICATION:Lcom/apptentive/android/sdk/ApptentiveViewExitType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final shouldAddToEngage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    const-string v1, "MENU_ITEM"

    const-string v2, "menu_item"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveViewExitType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->MENU_ITEM:Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    .line 14
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    const-string v1, "BACK_BUTTON"

    const-string v2, "back_button"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveViewExitType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->BACK_BUTTON:Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    .line 15
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    const-string v1, "NOTIFICATION"

    const-string v2, "notification"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/apptentive/android/sdk/ApptentiveViewExitType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->NOTIFICATION:Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->MENU_ITEM:Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->BACK_BUTTON:Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->NOTIFICATION:Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->$VALUES:[Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->name:Ljava/lang/String;

    .line 29
    iput-boolean p4, p0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->shouldAddToEngage:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/ApptentiveViewExitType;
    .locals 1

    .line 12
    const-class v0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/ApptentiveViewExitType;
    .locals 1

    .line 12
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->$VALUES:[Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/ApptentiveViewExitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/ApptentiveViewExitType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isShouldAddToEngage()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->shouldAddToEngage:Z

    return v0
.end method
