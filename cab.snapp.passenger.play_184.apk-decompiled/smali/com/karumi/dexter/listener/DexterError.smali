.class public final enum Lcom/karumi/dexter/listener/DexterError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/karumi/dexter/listener/DexterError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/karumi/dexter/listener/DexterError;

.field public static final enum NO_PERMISSIONS_REQUESTED:Lcom/karumi/dexter/listener/DexterError;

.field public static final enum REQUEST_ONGOING:Lcom/karumi/dexter/listener/DexterError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/karumi/dexter/listener/DexterError;

    const/4 v1, 0x0

    const-string v2, "REQUEST_ONGOING"

    invoke-direct {v0, v2, v1}, Lcom/karumi/dexter/listener/DexterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/karumi/dexter/listener/DexterError;->REQUEST_ONGOING:Lcom/karumi/dexter/listener/DexterError;

    new-instance v0, Lcom/karumi/dexter/listener/DexterError;

    const/4 v2, 0x1

    const-string v3, "NO_PERMISSIONS_REQUESTED"

    invoke-direct {v0, v3, v2}, Lcom/karumi/dexter/listener/DexterError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/karumi/dexter/listener/DexterError;->NO_PERMISSIONS_REQUESTED:Lcom/karumi/dexter/listener/DexterError;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/karumi/dexter/listener/DexterError;

    sget-object v3, Lcom/karumi/dexter/listener/DexterError;->REQUEST_ONGOING:Lcom/karumi/dexter/listener/DexterError;

    aput-object v3, v0, v1

    sget-object v1, Lcom/karumi/dexter/listener/DexterError;->NO_PERMISSIONS_REQUESTED:Lcom/karumi/dexter/listener/DexterError;

    aput-object v1, v0, v2

    sput-object v0, Lcom/karumi/dexter/listener/DexterError;->$VALUES:[Lcom/karumi/dexter/listener/DexterError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/karumi/dexter/listener/DexterError;
    .locals 1

    const-class v0, Lcom/karumi/dexter/listener/DexterError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/karumi/dexter/listener/DexterError;

    return-object p0
.end method

.method public static values()[Lcom/karumi/dexter/listener/DexterError;
    .locals 1

    sget-object v0, Lcom/karumi/dexter/listener/DexterError;->$VALUES:[Lcom/karumi/dexter/listener/DexterError;

    invoke-virtual {v0}, [Lcom/karumi/dexter/listener/DexterError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/karumi/dexter/listener/DexterError;

    return-object v0
.end method
