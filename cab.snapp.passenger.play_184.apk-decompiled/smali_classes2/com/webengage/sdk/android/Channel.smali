.class public final enum Lcom/webengage/sdk/android/Channel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/Channel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/webengage/sdk/android/Channel;

.field public static final enum EMAIL:Lcom/webengage/sdk/android/Channel;

.field public static final enum IN_APP:Lcom/webengage/sdk/android/Channel;

.field public static final enum PUSH:Lcom/webengage/sdk/android/Channel;

.field public static final enum SMS:Lcom/webengage/sdk/android/Channel;


# instance fields
.field private channel:Ljava/lang/String;

.field private userAttributesKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/webengage/sdk/android/Channel;

    sget-object v1, Lcom/webengage/sdk/android/am;->k:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "PUSH"

    const-string v4, "push"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/webengage/sdk/android/Channel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/Channel;->PUSH:Lcom/webengage/sdk/android/Channel;

    new-instance v0, Lcom/webengage/sdk/android/Channel;

    sget-object v1, Lcom/webengage/sdk/android/am;->l:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "SMS"

    const-string v5, "sms"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/webengage/sdk/android/Channel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/Channel;->SMS:Lcom/webengage/sdk/android/Channel;

    new-instance v0, Lcom/webengage/sdk/android/Channel;

    sget-object v1, Lcom/webengage/sdk/android/am;->m:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    const-string v5, "EMAIL"

    const-string v6, "email"

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/webengage/sdk/android/Channel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/Channel;->EMAIL:Lcom/webengage/sdk/android/Channel;

    new-instance v0, Lcom/webengage/sdk/android/Channel;

    const/4 v1, 0x3

    const-string v5, "IN_APP"

    const-string v6, "in_app"

    const-string v7, "opt_in_inapp"

    invoke-direct {v0, v5, v1, v6, v7}, Lcom/webengage/sdk/android/Channel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/Channel;->IN_APP:Lcom/webengage/sdk/android/Channel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/webengage/sdk/android/Channel;

    sget-object v5, Lcom/webengage/sdk/android/Channel;->PUSH:Lcom/webengage/sdk/android/Channel;

    aput-object v5, v0, v2

    sget-object v2, Lcom/webengage/sdk/android/Channel;->SMS:Lcom/webengage/sdk/android/Channel;

    aput-object v2, v0, v3

    sget-object v2, Lcom/webengage/sdk/android/Channel;->EMAIL:Lcom/webengage/sdk/android/Channel;

    aput-object v2, v0, v4

    sget-object v2, Lcom/webengage/sdk/android/Channel;->IN_APP:Lcom/webengage/sdk/android/Channel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/webengage/sdk/android/Channel;->$VALUES:[Lcom/webengage/sdk/android/Channel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/webengage/sdk/android/Channel;->channel:Ljava/lang/String;

    iput-object p4, p0, Lcom/webengage/sdk/android/Channel;->userAttributesKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/Channel;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/Channel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/Channel;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/Channel;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/Channel;->$VALUES:[Lcom/webengage/sdk/android/Channel;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/Channel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/Channel;

    return-object v0
.end method


# virtual methods
.method public final getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/Channel;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAttributeKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/Channel;->userAttributesKey:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/Channel;->userAttributesKey:Ljava/lang/String;

    return-object v0
.end method
