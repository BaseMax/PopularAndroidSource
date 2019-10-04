.class public final synthetic Lcom/ebay/mobile/-$$Lambda$MyApp$umrBFKU2FvmGaASjHDVlC49l44U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

.field private final synthetic f$1:Lcom/ebay/nautilus/kernel/net/AsBeacon;

.field private final synthetic f$2:Lcom/ebay/nautilus/kernel/net/AsMark;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/nautilus/kernel/net/AsBeaconManager;Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/-$$Lambda$MyApp$umrBFKU2FvmGaASjHDVlC49l44U;->f$0:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    iput-object p2, p0, Lcom/ebay/mobile/-$$Lambda$MyApp$umrBFKU2FvmGaASjHDVlC49l44U;->f$1:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    iput-object p3, p0, Lcom/ebay/mobile/-$$Lambda$MyApp$umrBFKU2FvmGaASjHDVlC49l44U;->f$2:Lcom/ebay/nautilus/kernel/net/AsMark;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ebay/mobile/-$$Lambda$MyApp$umrBFKU2FvmGaASjHDVlC49l44U;->f$0:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    iget-object v1, p0, Lcom/ebay/mobile/-$$Lambda$MyApp$umrBFKU2FvmGaASjHDVlC49l44U;->f$1:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    iget-object v2, p0, Lcom/ebay/mobile/-$$Lambda$MyApp$umrBFKU2FvmGaASjHDVlC49l44U;->f$2:Lcom/ebay/nautilus/kernel/net/AsMark;

    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/MyApp;->lambda$onCreate$0(Lcom/ebay/nautilus/kernel/net/AsBeaconManager;Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V

    return-void
.end method
