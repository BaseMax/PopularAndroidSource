.class public final Lcom/adyen/threeds2/internal/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adyen/threeds2/ProtocolErrorEvent;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/adyen/threeds2/ErrorMessage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/adyen/threeds2/ErrorMessage;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/adyen/threeds2/internal/f/c;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/adyen/threeds2/internal/f/c;->b:Lcom/adyen/threeds2/ErrorMessage;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Lcom/adyen/threeds2/ErrorMessage;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/adyen/threeds2/internal/f/c;->b:Lcom/adyen/threeds2/ErrorMessage;

    return-object v0
.end method

.method public getSDKTransactionID()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/adyen/threeds2/internal/f/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x282

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/f/c;->getSDKTransactionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x283

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/f/c;->getErrorMessage()Lcom/adyen/threeds2/ErrorMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
