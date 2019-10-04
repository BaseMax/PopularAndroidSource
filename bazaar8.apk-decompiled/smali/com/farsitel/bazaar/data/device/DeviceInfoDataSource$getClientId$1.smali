.class public final synthetic Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$getClientId$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "DeviceInfoDataSource.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/b/c;->a(Lc/c/a/e/b/c;Lh/f/a/a;ILjava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lh/f/a/a<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$getClientId$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$getClientId$1;

    invoke-direct {v0}, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$getClientId$1;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$getClientId$1;->c:Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$getClientId$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Lh/i/e;
    .locals 1

    const-class v0, Ljava/util/UUID;

    invoke-static {v0}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const-string v0, "randomUUID()Ljava/util/UUID;"

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "randomUUID"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$getClientId$1;->invoke()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/UUID;
    .locals 1

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
