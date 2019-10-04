.class public final synthetic Lcom/ebay/mobile/-$$Lambda$2CVHX1EL_uy3-yqwcbQn5M7KlMU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/ebay/mobile/-$$Lambda$2CVHX1EL_uy3-yqwcbQn5M7KlMU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ebay/mobile/-$$Lambda$2CVHX1EL_uy3-yqwcbQn5M7KlMU;

    invoke-direct {v0}, Lcom/ebay/mobile/-$$Lambda$2CVHX1EL_uy3-yqwcbQn5M7KlMU;-><init>()V

    sput-object v0, Lcom/ebay/mobile/-$$Lambda$2CVHX1EL_uy3-yqwcbQn5M7KlMU;->INSTANCE:Lcom/ebay/mobile/-$$Lambda$2CVHX1EL_uy3-yqwcbQn5M7KlMU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/ebay/nautilus/kernel/dagger/KernelComponentHolder;->getOrCreateInstance()Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    return-void
.end method
