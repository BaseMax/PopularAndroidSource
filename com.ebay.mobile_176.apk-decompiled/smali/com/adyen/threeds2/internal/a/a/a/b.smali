.class public abstract Lcom/adyen/threeds2/internal/a/a/a/b;
.super Lcom/adyen/threeds2/internal/a/a/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adyen/threeds2/internal/a/a/a/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x44

    .line 28
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/adyen/threeds2/internal/a/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
