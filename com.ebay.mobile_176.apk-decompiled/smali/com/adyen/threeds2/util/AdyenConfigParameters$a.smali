.class final Lcom/adyen/threeds2/util/AdyenConfigParameters$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/util/AdyenConfigParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$a;->a:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/adyen/threeds2/util/AdyenConfigParameters$a;->b:Ljava/lang/String;

    return-object v0
.end method
