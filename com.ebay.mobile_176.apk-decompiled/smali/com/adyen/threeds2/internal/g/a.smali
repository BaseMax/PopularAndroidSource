.class public final Lcom/adyen/threeds2/internal/g/a;
.super Ljava/lang/Exception;


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/a/a/b/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/adyen/threeds2/internal/g/a;->a:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    iput-object p3, p0, Lcom/adyen/threeds2/internal/g/a;->a:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/internal/a/a/b/a/c;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/adyen/threeds2/internal/g/a;->a:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/g/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/g/a;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x287

    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x288

    .line 57
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
