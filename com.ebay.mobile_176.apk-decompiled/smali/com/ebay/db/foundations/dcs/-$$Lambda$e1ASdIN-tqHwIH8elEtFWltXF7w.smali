.class public final synthetic Lcom/ebay/db/foundations/dcs/-$$Lambda$e1ASdIN-tqHwIH8elEtFWltXF7w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/ebay/db/foundations/dcs/-$$Lambda$e1ASdIN-tqHwIH8elEtFWltXF7w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ebay/db/foundations/dcs/-$$Lambda$e1ASdIN-tqHwIH8elEtFWltXF7w;

    invoke-direct {v0}, Lcom/ebay/db/foundations/dcs/-$$Lambda$e1ASdIN-tqHwIH8elEtFWltXF7w;-><init>()V

    sput-object v0, Lcom/ebay/db/foundations/dcs/-$$Lambda$e1ASdIN-tqHwIH8elEtFWltXF7w;->INSTANCE:Lcom/ebay/db/foundations/dcs/-$$Lambda$e1ASdIN-tqHwIH8elEtFWltXF7w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ebay/nautilus/base/QaMode;->fromString(Ljava/lang/String;)Lcom/ebay/nautilus/base/QaMode;

    move-result-object p1

    return-object p1
.end method
