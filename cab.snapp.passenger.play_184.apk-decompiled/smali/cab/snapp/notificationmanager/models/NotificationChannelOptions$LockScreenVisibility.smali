.class public final enum Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/notificationmanager/models/NotificationChannelOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockScreenVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

.field public static final enum HIDING_SENSITIVE_CONTENT:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

.field public static final enum NOT_SHOWING:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

.field public static final enum SHOWING_COMPLETELY:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "SHOWING_COMPLETELY"

    invoke-direct {v0, v3, v2, v1}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->SHOWING_COMPLETELY:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    .line 32
    new-instance v0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    const-string v3, "HIDING_SENSITIVE_CONTENT"

    invoke-direct {v0, v3, v1, v2}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->HIDING_SENSITIVE_CONTENT:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    .line 33
    new-instance v0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    const/4 v3, 0x2

    const-string v4, "NOT_SHOWING"

    const/4 v5, -0x1

    invoke-direct {v0, v4, v3, v5}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->NOT_SHOWING:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    const/4 v0, 0x3

    new-array v0, v0, [Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    .line 29
    sget-object v4, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->SHOWING_COMPLETELY:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    aput-object v4, v0, v2

    sget-object v2, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->HIDING_SENSITIVE_CONTENT:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    aput-object v2, v0, v1

    sget-object v1, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->NOT_SHOWING:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    aput-object v1, v0, v3

    sput-object v0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->$VALUES:[Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;
    .locals 1

    .line 29
    const-class v0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    return-object p0
.end method

.method public static values()[Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;
    .locals 1

    .line 29
    sget-object v0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->$VALUES:[Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    invoke-virtual {v0}, [Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 42
    iget v0, p0, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->a:I

    return v0
.end method
