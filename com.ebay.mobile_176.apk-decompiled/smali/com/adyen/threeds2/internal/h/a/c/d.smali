.class public final Lcom/adyen/threeds2/internal/h/a/c/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/adyen/threeds2/internal/h/a/c/c;

.field public static final b:Lcom/adyen/threeds2/internal/h/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/adyen/threeds2/internal/h/a/c/b;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/h/a/c/b;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/h/a/c/d;->a:Lcom/adyen/threeds2/internal/h/a/c/c;

    .line 31
    new-instance v0, Lcom/adyen/threeds2/internal/h/a/c/a;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/h/a/c/a;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/h/a/c/d;->b:Lcom/adyen/threeds2/internal/h/a/c/c;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/a/c/c;
    .locals 1

    .line 34
    sget-object v0, Lcom/adyen/threeds2/internal/h/a/c/d;->a:Lcom/adyen/threeds2/internal/h/a/c/c;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/a/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object p0, Lcom/adyen/threeds2/internal/h/a/c/d;->a:Lcom/adyen/threeds2/internal/h/a/c/c;

    return-object p0

    .line 36
    :cond_0
    sget-object v0, Lcom/adyen/threeds2/internal/h/a/c/d;->b:Lcom/adyen/threeds2/internal/h/a/c/c;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/a/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 37
    sget-object p0, Lcom/adyen/threeds2/internal/h/a/c/d;->b:Lcom/adyen/threeds2/internal/h/a/c/c;

    return-object p0

    .line 39
    :cond_1
    sget-object p0, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/e/c;->a()Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p0

    throw p0
.end method
