.class public final enum Lcom/facebook/crypto/CryptoConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/crypto/CryptoConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/crypto/CryptoConfig;

.field public static final enum KEY_128:Lcom/facebook/crypto/CryptoConfig;

.field public static final enum KEY_256:Lcom/facebook/crypto/CryptoConfig;


# instance fields
.field public final cipherId:B

.field public final ivLength:I

.field public final keyLength:I

.field public final tagLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    new-instance v0, Lcom/facebook/crypto/CryptoConfig;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "KEY_128"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/facebook/crypto/CryptoConfig;-><init>(Ljava/lang/String;IBI)V

    sput-object v0, Lcom/facebook/crypto/CryptoConfig;->KEY_128:Lcom/facebook/crypto/CryptoConfig;

    .line 20
    new-instance v0, Lcom/facebook/crypto/CryptoConfig;

    const/4 v3, 0x2

    const-string v4, "KEY_256"

    const/16 v5, 0x20

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/facebook/crypto/CryptoConfig;-><init>(Ljava/lang/String;IBI)V

    sput-object v0, Lcom/facebook/crypto/CryptoConfig;->KEY_256:Lcom/facebook/crypto/CryptoConfig;

    new-array v0, v3, [Lcom/facebook/crypto/CryptoConfig;

    .line 17
    sget-object v3, Lcom/facebook/crypto/CryptoConfig;->KEY_128:Lcom/facebook/crypto/CryptoConfig;

    aput-object v3, v0, v1

    sget-object v1, Lcom/facebook/crypto/CryptoConfig;->KEY_256:Lcom/facebook/crypto/CryptoConfig;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/crypto/CryptoConfig;->$VALUES:[Lcom/facebook/crypto/CryptoConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BIII)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-byte p3, p0, Lcom/facebook/crypto/CryptoConfig;->cipherId:B

    .line 29
    iput p4, p0, Lcom/facebook/crypto/CryptoConfig;->keyLength:I

    const/16 p1, 0xc

    .line 30
    iput p1, p0, Lcom/facebook/crypto/CryptoConfig;->ivLength:I

    const/16 p1, 0x10

    .line 31
    iput p1, p0, Lcom/facebook/crypto/CryptoConfig;->tagLength:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/crypto/CryptoConfig;
    .locals 1

    .line 17
    const-class v0, Lcom/facebook/crypto/CryptoConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/crypto/CryptoConfig;

    return-object p0
.end method

.method public static values()[Lcom/facebook/crypto/CryptoConfig;
    .locals 1

    .line 17
    sget-object v0, Lcom/facebook/crypto/CryptoConfig;->$VALUES:[Lcom/facebook/crypto/CryptoConfig;

    invoke-virtual {v0}, [Lcom/facebook/crypto/CryptoConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/crypto/CryptoConfig;

    return-object v0
.end method
