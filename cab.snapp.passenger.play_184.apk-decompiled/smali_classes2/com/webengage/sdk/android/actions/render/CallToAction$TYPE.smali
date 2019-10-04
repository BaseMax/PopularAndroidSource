.class public final enum Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/actions/render/CallToAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

.field public static final enum LAUNCH_ACTIVITY:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

.field public static final enum LINK:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    const/4 v1, 0x0

    const-string v2, "LAUNCH_ACTIVITY"

    const-string v3, "start_activity"

    invoke-direct {v0, v2, v1, v3}, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->LAUNCH_ACTIVITY:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    new-instance v0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    const/4 v2, 0x1

    const-string v3, "LINK"

    const-string v4, "open_url_in_browser"

    invoke-direct {v0, v3, v2, v4}, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->LINK:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    sget-object v3, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->LAUNCH_ACTIVITY:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    aput-object v3, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->LINK:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->$VALUES:[Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->s:Ljava/lang/String;

    return-void
.end method

.method public static valueFromString(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->LAUNCH_ACTIVITY:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->LAUNCH_ACTIVITY:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    return-object p0

    :cond_0
    sget-object v0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->LINK:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->LINK:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->$VALUES:[Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->s:Ljava/lang/String;

    return-object v0
.end method
