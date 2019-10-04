.class public final Lcom/adyen/threeds2/internal/h/b/d;
.super Lcom/adyen/threeds2/internal/h/e/f;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2a9

    .line 33
    invoke-static {p1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/h/e/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 29
    new-array p1, p1, [B

    :goto_0
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/h/e/f;-><init>([B)V

    return-void
.end method
