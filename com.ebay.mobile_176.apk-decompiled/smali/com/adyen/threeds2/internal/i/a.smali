.class public final Lcom/adyen/threeds2/internal/i/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adyen/threeds2/AuthenticationRequestParameters;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->SDK_TRANSACTION_ID:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p1, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 52
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->DEVICE_DATA:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p2, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 53
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->SDK_EPHEMERAL_PUBLIC_KEY:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p3, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 54
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->SDK_APP_ID:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p4, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 55
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->SDK_REFERENCE_NUMBER:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p5, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 56
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->MESSAGE_VERSION:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p6, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 58
    iput-object p1, p0, Lcom/adyen/threeds2/internal/i/a;->a:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/adyen/threeds2/internal/i/a;->b:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/adyen/threeds2/internal/i/a;->c:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/adyen/threeds2/internal/i/a;->d:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/adyen/threeds2/internal/i/a;->e:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Lcom/adyen/threeds2/internal/i/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceData()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageVersion()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKAppID()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKEphemeralPublicKey()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKReferenceNumber()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKTransactionID()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i/a;->a:Ljava/lang/String;

    return-object v0
.end method
