.class public final Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/util/AdyenConfigParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->a:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appSignature(Ljava/lang/String;)Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/adyen/threeds2/parameters/ConfigParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "directoryServerId"

    .line 212
    iget-object v1, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "directoryServerPublicKey"

    .line 213
    iget-object v1, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/adyen/threeds2/parameters/ConfigParameters;

    invoke-direct {v0}, Lcom/adyen/threeds2/parameters/ConfigParameters;-><init>()V

    .line 217
    sget-object v1, Lcom/adyen/threeds2/util/AdyenConfigParameters;->DIRECTORY_SERVER_ID:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    iget-object v2, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->a(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;Ljava/lang/String;)V

    .line 218
    sget-object v1, Lcom/adyen/threeds2/util/AdyenConfigParameters;->DIRECTORY_SERVER_PUBLIC_KEY:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    iget-object v2, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->a(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Lcom/adyen/threeds2/util/AdyenConfigParameters;->SECURITY_APP_SIGNATURE:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    iget-object v2, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->a(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;Ljava/lang/String;)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->d:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 225
    sget-object v1, Lcom/adyen/threeds2/util/AdyenConfigParameters;->SECURITY_TRUSTED_APP_STORES:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    iget-object v2, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->d:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->a(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;Ljava/util/Collection;)V

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->e:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 229
    sget-object v1, Lcom/adyen/threeds2/util/AdyenConfigParameters;->SECURITY_MALICIOUS_APPS:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    iget-object v2, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->e:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->a(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;Ljava/util/Collection;)V

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->f:Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 233
    sget-object v1, Lcom/adyen/threeds2/util/AdyenConfigParameters;->DEVICE_PARAMETER_BLACKLIST:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    iget-object v2, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->f:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->a(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;Ljava/util/Collection;)V

    :cond_3
    return-object v0
.end method

.method public deviceParameterBlacklist(Ljava/util/Set;)Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->f:Ljava/util/Set;

    return-object p0
.end method

.method public maliciousApps(Ljava/util/Set;)Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->e:Ljava/util/Set;

    return-object p0
.end method

.method public trustedAppStores(Ljava/util/Set;)Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->d:Ljava/util/Set;

    return-object p0
.end method
