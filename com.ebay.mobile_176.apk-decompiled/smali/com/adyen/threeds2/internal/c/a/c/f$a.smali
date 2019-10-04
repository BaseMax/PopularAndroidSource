.class abstract Lcom/adyen/threeds2/internal/c/a/c/f$a;
.super Lcom/adyen/threeds2/internal/c/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/c/a/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adyen/threeds2/internal/c/a/c/f;


# direct methods
.method private constructor <init>(Lcom/adyen/threeds2/internal/c/a/c/f;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/adyen/threeds2/internal/c/a/c/f$a;->a:Lcom/adyen/threeds2/internal/c/a/c/f;

    invoke-direct {p0}, Lcom/adyen/threeds2/internal/c/a/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adyen/threeds2/internal/c/a/c/f;Lcom/adyen/threeds2/internal/c/a/c/f$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/c/a/c/f$a;-><init>(Lcom/adyen/threeds2/internal/c/a/c/f;)V

    return-void
.end method


# virtual methods
.method protected b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1a8

    .line 84
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
