.class final Lcom/adyen/threeds2/internal/c/a/c/f$d;
.super Lcom/adyen/threeds2/internal/c/a/c/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/c/a/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/adyen/threeds2/internal/c/a/c/f;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/c/a/c/f;)V
    .locals 1

    .line 93
    iput-object p1, p0, Lcom/adyen/threeds2/internal/c/a/c/f$d;->b:Lcom/adyen/threeds2/internal/c/a/c/f;

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/adyen/threeds2/internal/c/a/c/f$a;-><init>(Lcom/adyen/threeds2/internal/c/a/c/f;Lcom/adyen/threeds2/internal/c/a/c/f$1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1ae

    .line 99
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/c/a/c;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/c/a/c/f$d;->c(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method protected c(Landroid/content/Context;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/c/a/c;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/adyen/threeds2/internal/c/a/c/f$d;->b:Lcom/adyen/threeds2/internal/c/a/c/f;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/c/a/c/f;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
