.class public final Lcom/adyen/threeds2/internal/h/a/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/adyen/threeds2/internal/h/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/adyen/threeds2/internal/h/a/a/a;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/h/a/a/a;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/h/a/a/c;->a:Lcom/adyen/threeds2/internal/h/a/a/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/a/a/b;
    .locals 1

    .line 31
    sget-object v0, Lcom/adyen/threeds2/internal/h/a/a/c;->a:Lcom/adyen/threeds2/internal/h/a/a/b;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 32
    sget-object p0, Lcom/adyen/threeds2/internal/h/a/a/c;->a:Lcom/adyen/threeds2/internal/h/a/a/b;

    return-object p0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x293

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
