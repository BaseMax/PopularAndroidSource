.class Lcom/adyen/threeds2/internal/c/a/c/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adyen/threeds2/internal/c/a/c/d;->c(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/net/NetworkInterface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/adyen/threeds2/internal/c/a/c/d;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/c/a/c/d;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/adyen/threeds2/internal/c/a/c/d$1;->a:Lcom/adyen/threeds2/internal/c/a/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/NetworkInterface;Ljava/net/NetworkInterface;)I
    .locals 0

    .line 65
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1a1

    .line 67
    invoke-static {p2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 62
    check-cast p1, Ljava/net/NetworkInterface;

    check-cast p2, Ljava/net/NetworkInterface;

    invoke-virtual {p0, p1, p2}, Lcom/adyen/threeds2/internal/c/a/c/d$1;->a(Ljava/net/NetworkInterface;Ljava/net/NetworkInterface;)I

    move-result p1

    return p1
.end method
