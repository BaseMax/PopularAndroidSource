.class public final Lcom/adyen/threeds2/parameters/ChallengeParameters;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get3DSServerTransactionID()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/adyen/threeds2/parameters/ChallengeParameters;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAcsRefNumber()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/adyen/threeds2/parameters/ChallengeParameters;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAcsSignedContent()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/adyen/threeds2/parameters/ChallengeParameters;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAcsTransactionID()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/adyen/threeds2/parameters/ChallengeParameters;->b:Ljava/lang/String;

    return-object v0
.end method

.method public set3DSServerTransactionID(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/adyen/threeds2/parameters/ChallengeParameters;->a:Ljava/lang/String;

    return-void
.end method

.method public setAcsRefNumber(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/adyen/threeds2/parameters/ChallengeParameters;->c:Ljava/lang/String;

    return-void
.end method

.method public setAcsSignedContent(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/adyen/threeds2/parameters/ChallengeParameters;->d:Ljava/lang/String;

    return-void
.end method

.method public setAcsTransactionID(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/adyen/threeds2/parameters/ChallengeParameters;->b:Ljava/lang/String;

    return-void
.end method
