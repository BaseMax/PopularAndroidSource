.class final enum Lorg/eclipse/paho/android/service/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/paho/android/service/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR:Lorg/eclipse/paho/android/service/i;

.field public static final enum NO_RESULT:Lorg/eclipse/paho/android/service/i;

.field public static final enum OK:Lorg/eclipse/paho/android/service/i;

.field private static final synthetic a:[Lorg/eclipse/paho/android/service/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lorg/eclipse/paho/android/service/i;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/android/service/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/android/service/i;->OK:Lorg/eclipse/paho/android/service/i;

    .line 27
    new-instance v0, Lorg/eclipse/paho/android/service/i;

    const/4 v2, 0x1

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v2}, Lorg/eclipse/paho/android/service/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/android/service/i;->ERROR:Lorg/eclipse/paho/android/service/i;

    .line 32
    new-instance v0, Lorg/eclipse/paho/android/service/i;

    const/4 v3, 0x2

    const-string v4, "NO_RESULT"

    invoke-direct {v0, v4, v3}, Lorg/eclipse/paho/android/service/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/android/service/i;->NO_RESULT:Lorg/eclipse/paho/android/service/i;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/paho/android/service/i;

    .line 18
    sget-object v4, Lorg/eclipse/paho/android/service/i;->OK:Lorg/eclipse/paho/android/service/i;

    aput-object v4, v0, v1

    sget-object v1, Lorg/eclipse/paho/android/service/i;->ERROR:Lorg/eclipse/paho/android/service/i;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/paho/android/service/i;->NO_RESULT:Lorg/eclipse/paho/android/service/i;

    aput-object v1, v0, v3

    sput-object v0, Lorg/eclipse/paho/android/service/i;->a:[Lorg/eclipse/paho/android/service/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/paho/android/service/i;
    .locals 1

    .line 18
    const-class v0, Lorg/eclipse/paho/android/service/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/paho/android/service/i;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/paho/android/service/i;
    .locals 1

    .line 18
    sget-object v0, Lorg/eclipse/paho/android/service/i;->a:[Lorg/eclipse/paho/android/service/i;

    invoke-virtual {v0}, [Lorg/eclipse/paho/android/service/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/paho/android/service/i;

    return-object v0
.end method
